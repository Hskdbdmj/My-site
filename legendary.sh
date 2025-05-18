#!/data/data/com.termux/files/usr/bin/bash

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
RESET='\033[0m'

# Clear screen
clear

# Legendary DEVX Banner
echo -e "${RED}"
echo "██████╗ ███████╗██╗   ██╗██╗  ██╗"
echo "██╔══██╗██╔════╝╚██╗ ██╔╝██║ ██╔╝"
echo "██████╔╝█████╗   ╚████╔╝ █████╔╝ "
echo "██╔═══╝ ██╔══╝    ╚██╔╝  ██╔═██╗ "
echo "██║     ███████╗   ██║   ██║  ██╗"
echo "╚═╝     ╚══════╝   ╚═╝   ╚═╝  ╚═╝"
echo -e "${RESET}"
echo -e "${RED}              D  E  V  X               ${RESET}"

sleep 1
echo -e "${CYAN}>> WELCOME, LEGENDARY DEVX! <<${RESET}"
sleep 1
echo -e "${YELLOW}>> You are now entering BEAST MODE... <<${RESET}"
sleep 1
echo -e "${GREEN}>> Status: System Dominated. <<${RESET}"
sleep 1

# Optional: Toast message (Termux:API)
if command -v termux-toast &> /dev/null; then
    termux-toast "DEVX has entered LEGENDARY MODE!"
fi

# Optional: Sound effect if 'play' is installed
if command -v play &> /dev/null; then
    play -nq -t alsa synth 0.5 sine 880
fi
