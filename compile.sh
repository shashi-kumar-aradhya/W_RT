#i/bin/bash

clear

echo "The compilation process starts now"

echo "sudo make ARCH=arm CROSS_COMPILE=/home/shashi/dabba/W_RT/bb-kernel/dl/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- distclean"
make ARCH=arm CROSS_COMPILE=/home/shashi/dabba/W_RT/bb-kernel/dl/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- distclean
#make ARCH=arm CROSS_COMPILE=/home/shashi/dabba/W_RT/bb-kernel/dl/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- clean

echo "sudo make ARCH=arm CROSS_COMPILE=/home/shashi/dabba/W_RT/bb-kernel/dl/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- beaglebone_defconfig"
make ARCH=arm CROSS_COMPILE=/home/shashi/dabba/W_RT/bb-kernel/dl/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- beaglebone_defconfig

echo "sudo make -j4 ARCH=arm LOCALVERSION=-bone23 CROSS_COMPILE="/home/shashi/dabba/W_RT/bb-kernel/dl/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-" dtbs LOADADDR=0x80008000 uImage modules > make.txt"
make -j4 ARCH=arm LOCALVERSION=-bone23 CROSS_COMPILE="/home/shashi/dabba/W_RT/bb-kernel/dl/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-" dtbs LOADADDR=0x80008000 uImage modules > make.txt


echo "The compilation process ended" 
