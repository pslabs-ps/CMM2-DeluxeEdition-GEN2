# Colour Maximite 2 Deluxe Edition GEN2

The product is based on the Color Maximite 2 GEN2 - Geoff's project. It is 100% compatible with it and has been extended with additional functions.
Color Maximite 2 Deluxe Edition GEN 2 is produced in Poland.
The Color Maximite 2 Deluxe Edition GEN2 is an enhanced version of previous generation.

Schematic can be found here: [schematic REV E v02](/Schematic/CCM2_Deluxe_GEN2_REVE_ver02.pdf)

Maximite, expansion system and cards can be purchased here: [PS Labs](https://sklep.pslabs.pl/Maximite-c91)


#Table of contents
1. [ Main features ](#feat)
2. [ Usage tips. ](#usage)

<a name="feat"></a>
# Main features
- built-in ARM Cortex-M7 32-bit RISC processor clocked at 480MHz
- 32MB external RAM
- 3 sockets to connect 3 Wii Nunchuk controllers (as opposed to 1 socket in the original design)
- socket for connecting a standard joystick, e.g. Atari
- reset button
- flash button
- 5 edge connectors for expansion cards 
- 40 and 26 pin IDC for connecting expansion system
- USB socket for keyboard connection
- USB socket for mouse connection
- USB to UART for: communication, CPU flashing, mouse chip flashing and ESP01 flashing
- IR sensor
- RTC clock chip
- audio jack
- VGA socket
- power switch
- SD card slot
- LEDs indicating power and activity
- built-in battery for RTC

# What are the differences
Table below shows main differences in Maximite 2 family

| Parameter | Colour Maximite 2 Deluxe GEN2| Colour Maximite 2 Deluxe | Colour Maximite 2 GEN2 | Colour Maximite 2 |
| --- | --- |  --- |  --- |  --- | 
| Processor speed | 480MHz | 480MHz | 480 MHz | 400-480MHz |
| Ram | 32MB | 16MB | 32MB | 16MB |
| Color depth | 24 bit | 16 bit | 24 bit | 16 bit |
| Build in expansion system | YES | no | no | no |
| Compatible with external expansion system | YES | no | no | no |
| Build in USB mouse chip | YES | YES | no | no |
| RTC chip | YES | no | no | YES |
| Number of Nunchuk ports | 3 | 3 | 2 | 1 |
| Atari joystick port | YES | YES | no | no |
| WiFi ESP01 support | YES | YES | YES | no |
| Reset button | YES | YES | no | no |
| Flash button | YES | YES | no | no |
| Easy flashable ESP01 | YES | YES | no | no |
| Easy flashable Mouse Chip | YES | no | no | no |




# WARNING!
<img src="Images/champf.jpg" width="200">

| :warning: Expansion card have to have edges chamfered using unchamfered card will result in slot damage. |
| --- |





# Powering Maximite from expansion Power Card
If You need to power Maximite system from Power card please remove solder jumpers JP1 and JP6 marked below to disconnect internal power sources

<img src="Images/power.png" width="400">

# Flashing CPU
CPU can be flashed using one of following methods:

## UART flashing method
This is the slowest method, if possible consider using USB method

Needed tools and software:
- USB A-B cable
- PC with Windows
- STM32CubeProgrammer software installed can be downloaded here: [STM32CubeProgrammer software for all STM32](https://www.st.com/en/development-tools/stm32cubeprog.html)

Procedure:
1. Set J1 jumpers to as shown below:

<img src="Images/jumper_cpu_flash_uart.png" width="400">

2. Connect USB A-B cable to maximite and PC
3. Open STM32CubeProgrammer program

<img src="Images/setting_cpu_flash_uart.png" width="800">

4. Select UART
5. Select COM port
6. Press and hold FLASH button and press RESET button while still holding FLASH
7. Press connect, successful connection will be reported in Log

<img src="Images/uart_connected.png" width="800">

8. Go to Erasing & Programming tab

<img src="Images/uart_start_flash.png" width="800">

9. Browse and select firmware
10. Press Start Programming button, flashing will start:

<img src="Images/uart_flash_progress.png" width="800">

11. Successful flashing will be reported by po-up window and Log:

<img src="Images/uart_flash_comp.png" width="800">

12. Press disconnect button
13. Reboot the unit by using power switch or RESET switch


## USB flashing method
This method is much faster than UART method, requires USB A-A cable

Needed tools and software:
- USB A-A cable
- PC with Windows
- STM32CubeProgrammer software installed can be downloaded here: [STM32CubeProgrammer software for all STM32](https://www.st.com/en/development-tools/stm32cubeprog.html)

Procedure:
1. Connect USB A-A cable to maximite keyboard port and PC
2. Open STM32CubeProgrammer program
3. Press and hold FLASH button and press RESET button while still holding FLASH, You should hear Windows found device sound

<img src="Images/setting_cpu_flash_usb.png" width="800">

4. Press refresh icon and select USB1 (or other) from drop down menu
5. Remaining steps are identical as those described in **UART flashing method** starting from step 7
