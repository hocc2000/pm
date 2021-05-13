#! /bin/bash

WALLET=""
ID=""
POWER_LIMIT="230"

if [ "$1" = "start" ]
then
    sudo nvidia-smi -pl ${POWER_LIMIT}
    ~/pm/PhoenixMiner -pool asia1.ethermine.org:14444 -pool2 us1.ethermine.org:14444 -wal ${WALLET}.${ID} -proto 3 -log 0
elif [ "$1" = "stop" ]
then
    killall PhoenixMiner
else
    echo "start stop"
fi