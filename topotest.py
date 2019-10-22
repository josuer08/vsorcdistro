#!/usr/bin/python

from mininet.topo import Topo
from mininet.log import setLogLevel, info
# from mininet.node import Controller, RemoteController, OVSController
# from mininet.node import CPULimitedHost, Host, Node
# from mininet.node import OVSKernelSwitch, UserSwitch
# from mininet.node import IVSSwitch
# from mininet.cli import CLI
# from mininet.link import TCLink, Intf
# from subprocess import call


class MiTopo(Topo):

    def build(self):
        #Contructor de topologia custom
        s4 = self.addSwitch('s4')
        s2 = self.addSwitch('s2')
        s3 = self.addSwitch('s3')
        s1 = self.addSwitch('s1')
        h8 = self.addHost('h8')
        h4 = self.addHost('h4')
        h6 = self.addHost('h6')
        h1 = self.addHost('h1')
        h5 = self.addHost('h5')
        h2 = self.addHost('h2')
        h3 = self.addHost('h3')
        h7 = self.addHost('h7')
        h9 = self.addHost('h9')

        self.addLink(h1, s2)
        self.addLink(h9, s4)
        self.addLink(h2, s2)
        self.addLink(s1, s2)
        self.addLink(s1, s3)
        self.addLink(s3, s4)
        self.addLink(h3, s1)
        self.addLink(h4, s1)
        self.addLink(h5, s3)
        self.addLink(h6, s3)
        self.addLink(h7, s4)
        self.addLink(h8, s4)
        #info('llegue al final de mitopo\n')


#topos = { 'TopoMia': ( lambda: MiTopo() ) }
