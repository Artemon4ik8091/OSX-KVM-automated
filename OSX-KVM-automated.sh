#!/bin/sh

#  OSX-KVM-automated.sh
#  
#
#  Created by Aiden Pearce on 26.09.2024.
#

echo 'alias macos="./OSX-KVM/OpenCore-Boot.sh"' > .bashrc sudo apt install qemu-system uml-utilities virt-manager git dmg2img -y; cd; git clone --depth 1 --recursive https://github.com/kholia/OSX-KVM.git; cd OSX-KVM; chmod +x *; ./fetch-macOS-v2.py; dmg2img -i BaseSystem.dmg BaseSystem.img; qemu-img create -f qcow2 mac_hdd_ng.img 256G; ./OpenCore-Boot.sh;

