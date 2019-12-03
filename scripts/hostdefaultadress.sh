#!/bin/bash
: '
Este script es para usarlo junto con el routerflows.sh en 
la practica de OVS como routers.

'

#Setting addreses
echo "Setting addresses..."
echo "h1 ip addr del 172.16.20.10/24 dev h1-eth0" > fifo
sleep 0.5
echo "h1 ip addr add 10.0.0.1/8 dev h1-eth0" > fifo
sleep 0.5
echo "h2 ip addr del 172.16.10.10/24 dev h2-eth0" > fifo
sleep 0.5
echo "h2 ip addr add 10.0.0.2/8 dev h2-eth0" > fifo 
sleep 0.5
echo "h3 ip addr del 192.168.30.10/24 dev h3-eth0" > fifo
sleep 0.5
echo "h3 ip addr add 10.0.0.3/8 dev h3-eth0" > fifo
sleep 1
echo "Done"
