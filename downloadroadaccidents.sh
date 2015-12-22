#!/bin/bash
#wget http://arrivealive.xyz/downloads/accidents.json -O accidents.json
DIVISIONS=100
mkdir tmp
pacman -S --noconfirm python python-pip
yes | pip install xmltodict
python downloadroadaccidents.py $DIVISIONS
python parseroadaccident.py $DIVISIONS > accidents.json
rm -r tmp
cd ../
mv genscripts/accidents.json data/accidents.json
