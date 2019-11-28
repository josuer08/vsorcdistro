#!/bin/bash
cd
cd ryu
sudo ./bin/ryu-manager --observe-links /home/pi/flowmanager/flowmanager/flowmanager.py ryu/app/rest_router.py 

