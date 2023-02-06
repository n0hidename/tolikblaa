#!/bin/bash

sudo apt update && sudo apt install gnome-terminal -y && sudo apt install openvpn -y

mkdir -p /home/$(whoami)/tolikblaa/Dolphin/Browsers
wget -O /home/$(whoami)/tolikblaa/Dolphin/Browsers/gologin.tar https://dl.gologin.com/gologin.tar
tar –xvf gologin.tar 

OUTPUT=$(whoami)

var="[Desktop Entry]
Type=Application
Terminal=true
Exec=sudo xfce4-terminal -e 'sudo bash /home/${OUTPUT}/tolikblaa/OpenVpn/OpenVpn.sh'
Name=OpenVPN
Icon=/home/${OUTPUT}/tolikblaa/OpenVpn/OpenVPN.png"
echo "$var" > "/home/$(whoami)/Desktop/OpenVPN.Desktop"

var="[Desktop Entry]
Type=Application
Terminal=false
Exec=sudo /home/${OUTPUT}/tolikblaa/Dolphin/Browsers/GoLogin-3.2.6 --no-sandbox
Name=Gologin
Icon=/home/${OUTPUT}/tolikblaa/Dolphin/DolphinLogo.png"
echo "$var" > "/home/$(whoami)/Desktop/Gologin.Desktop"

sudo chmod ugo+rwx /home/$(whoami)/Desktop/Dolphin.Desktop
sudo chmod ugo+rwx /home/$(whoami)/Desktop/OpenVPN.Desktop
sudo chmod ugo+rwx /home/$(whoami)/tolikblaa/Dolphin/Browsers/GoLogin-3.2.6
sudo chmod ugo+rwx /home/$(whoami)/tolikblaa/OpenVpn/OpenVpn.sh

exit 0
END
