#!/bin/bash
set -e

# Define colored prefixes
INFO="${CYAN}[INFO]${NC}"
SUCCESS="${GREEN}[SUCCESS]${NC}"
ERROR="${RED}[ERROR]${NC}"

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo "${CYAN}[STAGE] Stage 1: Run this script on Termux${NC}"

echo "${INFO} Upgrading packages..."
pkg upgrade -y
echo "${SUCCESS} Packages upgraded successfully."

echo "${INFO} Installing proot-distro..."
pkg install -y proot-distro
echo "${SUCCESS} proot-distro installed."

echo "${INFO} Installing Debian..."
proot-distro install debian
echo "${SUCCESS} Debian is installed."

echo "${INFO} Downloading and running script inside the proot-distro..."
proot-distro login debian -- curl https://redsonbr140.github.io/termux-whatsberry-installer/scripts/stage2.sh -o stage2.sh
proot-distro login debian -- chmod +x stage2.sh
proot-distro login debian -- bash stage2.sh
echo "${SUCCESS} Stage 2 script executed successfully."
