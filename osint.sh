#!/bin/bash

cd
mkdir osint
cd osint
# cloning repos

git clone https://github.com/kurobeats/metagoofil
# theHarvester
git clone https://github.com/laramies/theHarvester
cd theHarvester
python3 -m install -r requirements.txt
cd
cd osint
# spidefoot
git clone https://smicallef/spiderfoot
cd spiderfoot
pip3 install -r requirements.txt
cd
cd osint
# email2phonenumber
git clone https://github.com/martinvigo/email2phonenumber
cd email2phonenumber
pip install beautifulsoup4
pip install requests
pip3 install -r requirements.txt
cd
cd osint
# ghunt
git clone https://github.com/mxrch/GHunt
cd GHunt
python3 -m install -r requirements.txt
cd
cd osint
# osintgram
git clone https://github.com/Datalux/Osintgram
cd Osintgram
cd
cd osint
# Moriarty
git clone https://github.com/AzizKpin/Moriarty-Project
cd Moriarty-Project
sleep 1
sudo echo "git pull" >> /home/usr/osint/Moriarty-Project/install.sh
sleep 1
sudo echo "sudo reboot" >> /home/usr/osint/Moriarty-Project/install.sh
sleep 3
echo "One last script :)"
sleep 2
sudo chmod +x install.sh
sudo bash install.sh

