# freertos hello world for ESP32
## Prerequisites
* install ESP-IDF prerequisites: `sudo apt-get install git wget flex bison gperf python3 python3-pip python3-setuptools cmake ninja-build ccache libffi-dev libssl-dev dfu-util`
* more info on ESP-IDF setup: https://docs.espressif.com/projects/esp-idf/en/release-v4.2/esp32/get-started/index.html
* python3 needs to be in `/usr/bin/python`, if needed create symlink `sudo ln -s /usr/bin/python3 /usr/bin/python`


## How to build
* clone repository `git clone https://github.com/jernejnose/freertos_hello_world.git`
* cd to project root `cd freertos_hello_world`
* update submodules `git submodule update --init --recursive`
* install toolchain `./amazon-freertos/vendors/espressif/esp-idf/install.sh`
* export variables `. ./amazon-freertos/vendors/espressif/esp-idf/export.sh`
* build instruction `cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=amazon-freertos/tools/cmake/toolchains/xtensa-esp32.cmake -GNinja`
* build the project `idf.py build`

## Flash to device
* connect ESP32 devkit to pc via USB
* flash the firmware to device `idf.py -p /dev/ttyUSB0 flash` replace the /dev/ttyUSB0` with actual port 
* monitor device output `idf.py -p /dev/ttyUSB0 monitor`
* you can combine commands, to do everything in one step `idf.py -p \dev\zzyUSB0 build flash monitor`
* you can quit the monitor with `ctrl + ]`
