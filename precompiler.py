#!/usr/bin/env python3
import sys
import os
import time
cmd = './cleaner.sh '+sys.argv[1]
os.system(cmd)
time.sleep(.300)
document = open(sys.argv[1] + "_clean" ,"r+")
links = document.readlines()
document.close

#clean the \n in the colected data
a = 0
for linkline in links:
	links[a] = linkline.rstrip()
	a+=1

# get a list of non repeating devices
devices = []
for value in links:
	value_split = value.split(':')
	devices.append(value_split[0])
	devices.append(value_split[1])
devices = list(dict.fromkeys(devices))
print devices
print links
