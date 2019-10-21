#!/bin/bash
#sudo -E mn --controller=remote,ip=192.168.25.10 --custom ~/topotest.py --topo TopoMia --cluster $(awk 'BEGIN { ORS="" } { print p$0; p="," } END { print "\n" }' iplist) -v debug
sudo -E mn --controller=remote,ip=192.168.25.10 --topo tree,2,2 --cluster $(awk 'BEGIN { ORS="" } { print p$0; p="," } END { print "\n" }' iplist) -v debug

