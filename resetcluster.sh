#!/bin/bash
#Ingresar el comando por parametro y se ejecuta abriendo una sesion ssh 
#con las Ip del archivo iplist(todas las pi)
pssh -h iplist -i -l pi "sudo reboot now"
sudo reboot now
