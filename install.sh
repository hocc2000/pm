#! /bin/bash

FILENAME="PhoenixMiner_5.6d_Linux"

wget https://phoenixminer.info/downloads/${FILENAME}.tar.gz
tar xvfz ~/pm/${FILENAME}.tar.gz
cd ~/pm/${FILENAME}
mv ./* ../
rm -rf ~/pm/${FILENAME}.tar.gz
rm -rf ~/pm/${FILENAME}
chmod +x ~/pm/pm
cp ~/pm/pm /usr/bin/