/*
   ms5611read.c : read values from MS5611 barometer using I^2C

   Copyright (C) 2016 Simon D. Levy

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

static bool available;

void setup(void)
{
  // Get particulars for board
  i2cInit(I2CDEV_2);

  // Not sure why the ms5611 needs this, but without this line it doesn't work
  i2cWrite(0,0,0);

  // attempt to initialize barometer
  available = ms5611_init();
} 

void loop(void)
{

  float pressure, temperature;
  if (available) {
      ms5611_async_update();
      ms5611_async_read(&pressure, &temperature);
      printf("Pressure: %d.%d Pa\tTemperature: %d.%d K, i2c_errors: %d\n",
             (int32_t) pressure,
             (int32_t) (pressure*1000) % 1000,
             (int32_t) temperature,
             (int32_t) (temperature*1000) % 1000,
             (int32_t) i2cGetErrorCounter());
    }
  else
    {
      ms5611_async_update();
      ms5611_present();
      printf("MS5611 unavailable\n");
    }

} 
