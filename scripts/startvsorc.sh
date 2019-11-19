#!/bin/bash
cd /home/pi && mkfifo fifo && touch aichivo
cd /home/pi && cat fifo | sudo ./clusterGRE.py > aichivo 2>&1 &
exec 3>fifo


