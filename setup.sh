#!/bin/bash

echo "Starting script..."
cd
sleep 2
# update and upgrade
sudo apt update -y
sleep 1
sudo apt upgrade -y
sleep 1
# packages
sudo apt install htop -y
sudo apt install kitty -y
sudo apt install thunar -y
sudo apt install neofetch -y
sudo apt install cmake -y
sudo apt install make -y
sudo apt install nitrogen -y
sudo apt install ranger -y
sudo apt install git -y
sudo apt install python3-pip -y
sudo apt install python2
sudo apt install pcmanfm -y
sudo apt install automake -y
# brave browser
sleep 1
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y
# snapd/riseup vpn
sudo apt install snapd -y
sudo snap install core
sudo snap install --classic riseup-vpn
# i3wm
sudo apt install i3 -y
sudo apt install suckless-tools -y
sudo apt install i3-gaps -y
# cloning config
git clone https://github.com/naviofdebian/myi3setup
cd myi3setup
cp config /home/usr
cd
# cloning kali punk
git clone https://github.com/jopraveen/kali-punk
# qemu virt manager
sudo apt install qemu-kvm -y
sudo apt install libvirt-clients -y
sudo apt install libvirt-daemon-system -y
sudo apt install bridge-utils -y
sudo apt install virtinst -y
sudo apt install libvirt-daemon -y
sudo apt install virt-manager -y
sleep 1
sudo virsh net-start default
sleep 1
sudo virsh net-autostart default
sleep 1
sudo adduser usr libvirt
sudo adduser usr libvirt-qemu
echo "Script complete, setting up osint tools..."
sleep 2
sudo apt update
sleep 1
cd basic
sudo chmod +x osint.sh
./osint.sh


