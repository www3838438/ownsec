#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

APTLSTDIR=/opt/ownsec/0.Initial/lst/apt

APPSAPTLSTDIR=/opt/ownsec/0.Initial/src/PT2/3.UsrApp_Install
WIFIAPTLSTDIR=/opt/ownsec/0.Initial/src/PT2/2.Firmware_Install/1.Wifi

echo "${bold}
 ____   ____ _  _______ __  __  ____ ____       _     ___ ____ _____ ____  
|  _ \ / ___| |/ /_   _|  \/  |/ ___|  _ \     | |   |_ _/ ___|_   _/ ___| 
| |_) | |   | ' /  | | | |\/| | |  _| |_) |____| |    | |\___ \ | | \___ \ 
|  __/| |___| . \  | | | |  | | |_| |  _ <_____| |___ | | ___) || |  ___) |
|_|    \____|_|\_\ |_| |_|  |_|\____|_| \_\    |_____|___|____/ |_| |____/ 
                           
INSTALL Package Manager Lists to satisfy Deps & base apps
${normal}"

echo "${bold}
Installing the apt-get lists - go get a coffee, will take a while ...   
${normal}"
sudo apt-get update
sudo apt-get upgrade
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/essential.txt") -r -- sudo apt-get install -y

# xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/main/remove-initial.txt") -r -- sudo apt-get purge --remove -y

# Disable services

sudo service cups stop
sudo systemctl disable cups.service

sudo service cups-browsed stop
sudo systemctl disable cups-browsed.service

sudo service saned stop
sudo systemctl disable saned.service

sudo service dnsmasq stop
sudo systemctl disable dnsmasq.service

# end disable services

sudo apt-get autoremove -y

sudo apt-get install -y linux-image-extra-$(uname -r) 
#sudo apt-get install -y linux-image-extra-virtual-$(uname -r)

sudo easy_install -U pip

sudo updatedb
sudo ldconfig

sudo phpenmod mcrypt
sudo phpenmod mbstring