#! /bin/bash

FILENAME="PhoenixMiner_5.6d_Linux"

wget https://phoenixminer.info/downloads/${FILENAME}.tar.gz
tar xvfz ${FILENAME}.tar.gz
cd ${FILENAME}
mv ./* ../
rm -rf $FILENAME