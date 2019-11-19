#!/bin/bash
: '
Written by: Oscar J. Rodrigez

This is used for have the ID of the raspberry, based to the ip
'
echo $(ifconfig | grep inet | grep -v inet6 | grep -v 127.0.0.7) | awk '{print $2}' | awk -F "." '{print $4}'
