#!/bin/bash
set -e
echo "Stage 1: Run this script on termux"
echo "Upgrading packages..."
pkg upgrade -y
echo "Installing proot-distro"
pkg install -y proot-distro
echo "Installing debian"
proot-distro install debian
echo "Debian is installed."
echo "Downloading and running script inside the proot-distro"
proot-distro login debian -- curl https://redsonbr140.github.io/termux-whatsberry-installer/scripts/stage2.sh -o stage2.sh
proot-distro login debian -- chmod +x stage2.sh
proot-distro login debian -- bash stage2.sh
