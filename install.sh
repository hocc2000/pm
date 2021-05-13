#! /bin/bash

FILENAME = "PhoenixMiner_5.6d_Linux"

cd ~/pm
wget https://phoenixminer.info/downloads/$FILENAME.tar.gz
tar xvfz $FILENAME
cd $FILENAME
mv ./* ../
rm -rf $FILENAME