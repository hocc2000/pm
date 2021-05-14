#! /bin/bash

# Power limit
# 2080Ti 150
# 3090   290
# 3080   230

if [ "$1" = "stop" ]
then
    killall PhoenixMiner
elif [ "$1" != "" ] && [ "$2" != "" ] && [ "$3" != "" ]
then
    sudo nvidia-smi -pm 1
    sudo nvidia-smi -pl $3
    ~/pm/PhoenixMiner -pool asia1.ethermine.org:14444 -pool2 us1.ethermine.org:14444 -wal $1.$2 -proto 3 -log 0
else
    echo "pm WALLET NUM POWER-LIMIT"
    echo "pm stop"
fi