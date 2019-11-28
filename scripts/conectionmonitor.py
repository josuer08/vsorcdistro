#!/usr/bin/python
import os
for i in range(3,17):
    hostname = "192.168.25."+str(i) #example
    response = os.system("ping -c 1 " + hostname +" > /dev/null")

#and then check the response...
    if response == 0:
        print hostname
#    else:
#        print hostname, 'is down!'
