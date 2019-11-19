# Virtual SDN over Raspberry Pi Cluster
These directories has the main code and programs the project is using.

## Flowmanager
-Flowmanager directory has many things, but the most important is a backend written in python named flowmanager.py, is using ryu API and is used by the backend of the web server to have information about the SDN controller.

## mininet
-Mininet directory has ALL the code about mininet it self, is written in python and BE CAREFULL, because anything you change in the code is going to change its behavior. Here also on examples direcory is the cluster code , which is modified.

## ofloops, oftest and openflow
-These directories has all of the things that OpenFlow needs to work.

## pox
-Here is another SDN controller, which is POX, but we are not using it.

## ryu
-This is the main SDN controller, which is RYU, and here are all of the code about this.

## scripts
-Scripts directory has ALL the scripts that web server used to interact with the raspberry pi, and also has some text files which are used by some scripts. These are written on python and linux commands (bash)

## VSoRC
-This directory that contain the web server, which is in Node JS.
