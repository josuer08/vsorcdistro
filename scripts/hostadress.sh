#!/bin/bash
#:'
#Este script es para usarlo junto con el routerflows.sh en la practica de OVS c
#como routers
#'

#Setting addreses
echo "Setting addresses..."
echo "h1 ip addr del 10.0.0.1/8 dev h1-eth0" > fifo
echo "h1 ip addr add 172.16.20.10/24 dev h1-eth0" > fifo
echo "h2 ip addr del 10.0.0.2/8 dev h2-eth0" > fifo
echo "h2 ip addr add 172.16.10.10/24 dev h2-eth0" > fifo 
echo "h3 ip addr del 10.0.0.3/8 dev h3-eth0" > fifo
echo "h3 ip addr add 192.168.30.10/24 dev h3-eth0" > fifo

#Setting default route to the hosts
echo "Setting default route to the hosts..."
echo "h1 ip route add default via 172.16.20.1" > fifo
echo "h2 ip route add default via 172.16.10.1" > fifo
echo "h3 ip route add default via 192.168.30.1" > fifo
echo "Done"
