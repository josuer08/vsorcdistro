#!/bin/bash
cd ryu
sudo ./bin/ryu-manager --observe-links /home/pi/flowmanager/flowmanager/flowmanager.py ryu/app/simple_switch_13.py
#./ejecutarcontroller.sh > /dev/null 2>&1 & Para ejecutarlo en segundo plano

