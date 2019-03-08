/*
   memsize.c : test the MP25P16 flash memory

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
#include <string.h>

const char * MESSAGE = "Hello, world!";

static int msglen;

void setup(void)
{
    spiInit(SPI2);
    m25p16_init();
    flashfsInit();

    while (!flashfsIsReady())
        ;

    msglen = strlen(MESSAGE);

    flashfsWrite((uint8_t *)MESSAGE, msglen, true); // sync
}

void loop(void)
{
    delay(500);

    char s[100]; // long enough for any message?

    printf("%s\n", flashfsReadAbs(0, (uint8_t *)s, msglen) < msglen ? "error reading bytes" : s);
}
