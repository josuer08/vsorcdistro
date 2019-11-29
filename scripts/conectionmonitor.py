#!/usr/bin/python
import os
print "Raspberry Pi UP!"
for i in range(2,16):
    hostname = "rpi"+str(i)
    response = os.system("ping -c 1 " + hostname +" > /dev/null")
#Check the response...
    if response == 0:
        print hostname

