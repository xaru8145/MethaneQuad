/*
   drv_mpu6050.c : driver for Invensense MPU6050

   Adapted from https://github.com/multiwii/baseflight/blob/master/src/drv_mpu.c

   This file is part of BreezySTM32.

   BreezySTM32 is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   BreezySTM32 is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with BreezySTM32.  If not, see <http://www.gnu.org/licenses/>.
 */


#include <breezystm32.h>

#include <math.h>

#ifndef M_PI
#define M_PI 3.14159
#endif

/* Generic driver for invensense gyro/acc devices.
 *
 * Supported hardware:
 * MPU6050 (gyro + acc)
 *
 * AUX_I2C is enabled on devices which have bypass, to allow forwarding to compass in MPU9150-style devices
 */

// This is generally where all Invensense devices are at, for default (AD0 down) I2C address
#define MPU_ADDRESS                         (0x68)

#define GYRO_INT_PIN                        (Pin_13)

#define MPU_RA_WHO_AM_I                     (0x75)
#define MPU_RA_GYRO_XOUT_H                  (0x43)
#define MPU_RA_ACCEL_XOUT_H                 (0x3B)
#define MPU_RA_TEMP_OUT_A                   (0x41)
// For debugging/identification purposes
#define MPU_RA_XA_OFFS_H                    (0x06)    //[15:0] XA_OFFS
#define MPU_RA_PRODUCT_ID                   (0x0C)    // Product ID Register

// WHO_AM_I register contents for 6050
#define MPUx0x0_WHO_AM_I_CONST              (0x68)

enum lpf_e {
  INV_FILTER_256HZ_NOLPF2 = 0,
  INV_FILTER_188HZ,
  INV_FILTER_98HZ,
  INV_FILTER_42HZ,
  INV_FILTER_20HZ,
  INV_FILTER_10HZ,
  INV_FILTER_5HZ,
  INV_FILTER_2100HZ_NOLPF,
  NUM_FILTER
};

enum gyro_fsr_e {
  INV_FSR_250DPS = 0,
  INV_FSR_500DPS,
  INV_FSR_1000DPS,
  INV_FSR_2000DPS,
  NUM_GYRO_FSR
};

enum clock_sel_e {
  INV_CLK_INTERNAL = 0,
  INV_CLK_PLL,
  NUM_CLK
};

enum accel_fsr_e {
  INV_FSR_2G = 0,
  INV_FSR_4G,
  INV_FSR_8G,
  INV_FSR_16G,
  NUM_ACCEL_FSR
};


// Lowpass
static uint8_t mpuLowPassFilter = INV_FILTER_20HZ;

// Timestamp
static uint64_t imu_time_us = 0;
static bool new_imu_data = false;

// MPU6xxx registers
#define MPU_RA_SMPLRT_DIV       0x19
#define MPU_RA_CONFIG           0x1A
#define MPU_RA_GYRO_CONFIG      0x1B
#define MPU_RA_ACCEL_CONFIG     0x1C
#define MPU_RA_FIFO_EN          0x23
#define MPU_RA_I2C_MST_CTRL     0x24
#define MPU_RA_INT_PIN_CFG      0x37
#define MPU_RA_INT_ENABLE       0x38
#define MPU_RA_SIGNAL_PATH_RST  0x68
#define MPU_RA_USER_CTRL        0x6A
#define MPU_RA_PWR_MGMT_1       0x6B
#define MPU_RA_PWR_MGMT_2       0x6C
#define MPU_RA_FIFO_COUNT_H     0x72
#define MPU_RA_FIFO_R_W         0x74

// MPU6050 bits
#define MPU6050_INV_CLK_GYROZ   0x03
#define MPU6050_BIT_FIFO_RST    0x04
#define MPU6050_BIT_DMP_RST     0x08
#define MPU6050_BIT_FIFO_EN     0x40

static bool mpuReadRegisterI2C(uint8_t reg, uint8_t *data, int length)
{
  return i2cRead(MPU_ADDRESS, reg, length, data);
}

static bool mpuWriteRegisterI2C(uint8_t reg, uint8_t data)
{
  return i2cWrite(MPU_ADDRESS, reg, data);
}

void mpu6050_exti_init(int boardVersion)
{
  // enable AFIO for EXTI support
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

  // Configure EXTI
  EXTI_ClearITPendingBit(EXTI_Line13);
  EXTI_InitTypeDef EXTI_InitStructure;
  // GPIO Structure Used To initialize external interrupt pin
  // This assumes that the interrupt pin is attached to pin 26 (PB13)
  // Which is not be the case for all boards. The naze32 rev5+ has it's
  // interrupt on PC13, while rev4- and the flip32 devices use PB13.
  // see src/main/sensors/initializiation.c:85 in the cleanflight source code
  // for their version handling.
  if (boardVersion > 4) {
    gpioExtiLineConfig(GPIO_PortSourceGPIOC, GPIO_PinSource13);
  } else {
    gpioExtiLineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource13);
  }

  // Configure EXTI Line13
  EXTI_InitStructure.EXTI_Line = EXTI_Line13;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  // Disable AFIO Clock - we don't need it anymore
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, DISABLE);

  // Configure NVIC (Nested Vector Interrupt Controller)
  NVIC_InitTypeDef NVIC_InitStructure;
  // Select NVIC Channel to configure
  NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn;
  // Set priority to lowest
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 7;
  // Set subpriority to lowest
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  // Update NVIC registers
  NVIC_Init(&NVIC_InitStructure);
  //    NVIC_SetPriority(EXTI15_10_IRQn, 1);
}


// ======================================================================
void mpu6050_init(bool enableInterrupt, uint16_t * acc1G, float * gyroScale, int boardVersion)
{
  gpio_config_t gpio;

  // Set acc1G. Modified once by mpu6050CheckRevision for old (hopefully nonexistent outside of clones) parts
  *acc1G = 512 * 8;

  // 16.4 dps/lsb scalefactor for all Invensense devices
  *gyroScale = (1.0f / 16.4f) * (M_PI / 180.0f);

  // MPU_INT output on rev5+ hardware (PC13)
  if (enableInterrupt) {
    gpio.pin = Pin_13;
    gpio.speed = Speed_2MHz;
    gpio.mode = Mode_IN_FLOATING;
    if (boardVersion > 4){
      gpioInit(GPIOC, &gpio);
    } else {
      gpioInit(GPIOB, &gpio);
    }
    mpu6050_exti_init(boardVersion);
  }

  // Device reset
  mpuWriteRegisterI2C(MPU_RA_PWR_MGMT_1, 0x80); // Device reset
  delay(30); // wait for reboot

  // Gyro config
  mpuWriteRegisterI2C(MPU_RA_SMPLRT_DIV, 0x00); // Sample Rate = Gyroscope Output Rate / (1 + SMPLRT_DIV)
  mpuWriteRegisterI2C(MPU_RA_PWR_MGMT_1, MPU6050_INV_CLK_GYROZ); // Clock source = 3 (PLL with Z Gyro reference)
  mpuWriteRegisterI2C(MPU_RA_CONFIG, mpuLowPassFilter); // set DLPF
  mpuWriteRegisterI2C(MPU_RA_GYRO_CONFIG, INV_FSR_2000DPS << 3); // full-scale 2kdps gyro range

  // Accel scale 8g (4096 LSB/g)
  mpuWriteRegisterI2C(MPU_RA_ACCEL_CONFIG, INV_FSR_8G << 3);

  // Data ready interrupt configuration:  INT_RD_CLEAR_DIS, I2C_BYPASS_EN
  mpuWriteRegisterI2C(MPU_RA_INT_PIN_CFG, 0 << 7 | 0 << 6 | 0 << 5 | 1 << 4 | 0 << 3 | 0 << 2 | 1 << 1 | 0 << 0);
  mpuWriteRegisterI2C(MPU_RA_INT_ENABLE, 0x01); // DATA_RDY_EN interrupt enable
}

void mpu6050_read_all(int16_t *accData, int16_t *gyroData, int16_t* tempData, uint64_t *time_us)
{
  uint8_t buf[14];

  mpuReadRegisterI2C(MPU_RA_ACCEL_XOUT_H, buf, 14);

  accData[0] = (int16_t)((buf[0] << 8) | buf[1]);
  accData[1] = (int16_t)((buf[2] << 8) | buf[3]);
  accData[2] = (int16_t)((buf[4] << 8) | buf[5]);

  (*tempData) = (int16_t)((buf[6] << 8) | buf[7]);

  gyroData[0] = (int16_t)((buf[8] << 8) | buf[9]);
  gyroData[1] = (int16_t)((buf[10] << 8) | buf[11]);
  gyroData[2] = (int16_t)((buf[12] << 8) | buf[13]);

  (*time_us) = imu_time_us;
}


void mpu6050_read_accel(int16_t *accData)
{
  uint8_t buf[6];

  if (mpuReadRegisterI2C(MPU_RA_ACCEL_XOUT_H, buf, 6))
  {

    accData[0] = (int16_t)((buf[0] << 8) | buf[1]);
    accData[1] = (int16_t)((buf[2] << 8) | buf[3]);
    accData[2] = (int16_t)((buf[4] << 8) | buf[5]);
  }
}


void mpu6050_read_gyro(int16_t *gyroData)
{
  uint8_t buf[6];

  mpuReadRegisterI2C(MPU_RA_GYRO_XOUT_H, buf, 6);

  gyroData[0] = (int16_t)((buf[0] << 8) | buf[1]);
  gyroData[1] = (int16_t)((buf[2] << 8) | buf[3]);
  gyroData[2] = (int16_t)((buf[4] << 8) | buf[5]);
}

void mpu6050_read_temperature(int16_t *tempData)
{
  uint8_t buf[2];

  mpuReadRegisterI2C(MPU_RA_TEMP_OUT_A, buf, 2);

  *tempData = (int16_t)((buf[0] << 8) | buf[1]) / 4;
}


/*=======================================================
 * Asynchronous I2C Read Functions:
 * These methods use the asynchronous I2C
 * read capability on the naze32.
 */
static volatile int16_t accel[3];
static volatile int16_t gyro[3];
static volatile int16_t temp;
static volatile bool need_to_queue_new_i2c_job = false;
uint8_t all_buffer[14];
uint64_t measurement_time = 0;

void read_all_CB(void)
{
  accel[0] = (int16_t)((all_buffer[0] << 8) | all_buffer[1]);
  accel[1] = (int16_t)((all_buffer[2] << 8) | all_buffer[3]);
  accel[2] = (int16_t)((all_buffer[4] << 8) | all_buffer[5]);

  temp = (int16_t)((all_buffer[6] << 8) | all_buffer[7]);

  gyro[0] = (int16_t)((all_buffer[8] << 8) | all_buffer[9]);
  gyro[1] = (int16_t)((all_buffer[10] << 8) | all_buffer[11]);
  gyro[2] = (int16_t)((all_buffer[12] << 8) | all_buffer[13]);

  new_imu_data = true;
  measurement_time = imu_time_us;
}

void mpu6050_request_async_update_all()
{
  // Adds a new i2c job to the I2C job queue.
  // Current status of the job can be read by polling the
  // status variable, and the callback will be called when the function
  // is finished
  i2c_queue_job(READ,
                MPU_ADDRESS,
                MPU_RA_ACCEL_XOUT_H,
                all_buffer,
                14,
                NULL,
                &read_all_CB);
}


void mpu6050_async_read_all(volatile int16_t *accData, volatile int16_t *tempData, volatile int16_t *gyroData, volatile uint64_t* timeData)
{
  accData[0] = accel[0];
  accData[1] = accel[1];
  accData[2] = accel[2];
  (*tempData) = temp;
  gyroData[0] = gyro[0];
  gyroData[1] = gyro[1];
  gyroData[2] = gyro[2];
  (*timeData) = measurement_time;
}

bool mpu6050_new_data()
{
  if (need_to_queue_new_i2c_job)
  {
    mpu6050_request_async_update_all();
    need_to_queue_new_i2c_job = false;
  }

  if (new_imu_data)
  {
    new_imu_data = false;
    return true;
  }
  return false;
}

//=====================================================================================

void EXTI15_10_IRQHandler(void)
{
  if (EXTI_GetITStatus(EXTI_Line13) != RESET)
  {
    imu_time_us = micros();
    need_to_queue_new_i2c_job = true;
  }
  EXTI_ClearITPendingBit(EXTI_Line13);
}



