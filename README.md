# blink-led

**Blink component Led using Stm32f429 discovery board**\
\
This project is based on [blinky_stm32f429disco] (<https://github.com/wolfbiters/blinky_stm32f429disco/>) project.\
I just follow the instructions to compile and execute blinky main program. After what I built a small circuit with one led in order to make it flash to pin PG15 of the stm32f429 dicovery board.

## Prerequesite (tested on linux ubuntu 22.04 )

*Alire*: <https://github.com/alire-project/alire/releases>

1. Download and unzip the latest linux zip
2. Add *where_you_unzipped/alr* to PATH.
3. Verify Alire is found on your path by running this command on your terminal :

>which alr

## OpenOCD

Here is a [very good tutorial](<https://youtu.be/-p26X8lTAvo>) on how to install openocd on ubuntu.\
\

**STM32f429 Discovery board**\
\
![](http://stm32f4-discovery.net/wp-content/uploads/2014/06/stm32f429i-disco1.jpg)
* Plug it to your computer using the [USB MINI B cable](<https://fr.aliexpress.com/item/1005001942868270.html?algo_pvid=ca3f3071-36ed-4210-9a35-d2635ae72b56&algo_exp_id=ca3f3071-36ed-4210-9a35-d2635ae72b56-0&pdp_ext_f=%7B%22sku_id%22%3A%2212000018176126358%22%7D&pdp_npi=3%40dis%21XOF%211301.0%211042.0%21%21%21%21%21%402102172f16777957964894627d06fd%2112000018176126358%21sea%21SN%210&curPageLogUid=OkJbd81354FL>)


## Download 
if you don't have git, you can downloaded it [here](https://git-scm.com/downloads").\

Then create a new folder or move in the directory of your choice and clone this repository by running:\
    git clone https://github.com/bullyDD/blink-led.git


## Build
Inside blink-led repo, run:\
    alr build
    eval "$(alr printenv)"
    gprbuild blink_led.gpr


## Build with gnatstudio
    gnatstudio blink_led.gpr

## Run 
Now you can run the code on stm32f429 discovery board by running:\
    openocd -f /usr/local/share/openocd/scripts/board/stm32f429disc1.cfg -c 'program bin/blink_led verify reset exit'
\

As result you should see the led fashing at 1Hz (every 1 second). :-)






