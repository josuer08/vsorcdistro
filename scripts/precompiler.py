#!/usr/bin/python
"""
Written by: Oscar J. Rodriguez and Felix G. Tejada

This code is for precompile the VSORC language to Mininet topology API.
VSORC language is a topology languaje, for example:

s1:h1
s2:h2
s1:s2

This create a simple two switch topology with two host each one.
"""

import sys
import os
import time
from mininet.topo import Topo
from mininet.log import setLogLevel, info

links = []
devices = []
hosts = []
switches = []
#Lists

#cmd = './cleaner.sh '+sys.argv[1]
cmd2 = './cleaner.sh data'
os.system(cmd2)
time.sleep(.300)
#document = open(sys.argv[1] + "_clean" ,"r+")
document = open("data" + "_clean" ,"r+")
links = document.readlines()
document.close
#"data" is the file with the topo vsorc script

#clean the \n in the colected data
a = 0
for linkline in links:
	links[a] = linkline.rstrip()
	a+=1


# get a list of non repeating devices
for value in links:
	value_split = value.split(':')
	devices.append(value_split[0])
	devices.append(value_split[1])
devices = list(dict.fromkeys(devices))


class TopoFromCompiler(Topo):
#This class is for create the custom topology from the data collected.
#Here we also process the data to make the topo
	def build(self):
		for device in devices:
		        if device.startswith("h"):
				host = device
		                host = self.addHost(host) #Create a host with the data collected from the list
		                hosts.append(host)

		        elif device.startswith("s"):
				switch = device
                		switch = self.addSwitch(switch) #Create a switch
		                switches.append(switch)

		print ("Devices: " + str(devices) + "\n" + "Links: " + str(links) + "\n" + "Hosts: " + str(hosts) + "\n" + "Switches: " + str(switches) + "\n")
		sys.stdout.flush()
		
		#Create links
		for pair in links:
			split = pair.split(":")
			self.addLink(split[0],split[1])

