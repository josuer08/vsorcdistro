#!/bin/bash
echo "Raspberry Pi UP!"
fping -c1 -t500 $(echo $(cat iplist)) 2>&1 | grep -v "%$" | grep -v ")$" | grep "[0-9]$" | awk '{print $1}'


