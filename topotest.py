#!/usr/bin/python

from mininet.topo import Topo
# from mininet.log import setLogLevel, info
# from mininet.node import Controller, RemoteController, OVSController
# from mininet.node import CPULimitedHost, Host, Node
# from mininet.node import OVSKernelSwitch, UserSwitch
# from mininet.node import IVSSwitch
# from mininet.cli import CLI
# from mininet.link import TCLink, Intf
# from subprocess import call


class MiTopo(Topo):

    def build(self):
        # Contructor de topologia custom
        s1 = self.addSwitch('s1')
        s2 = self.addSwitch('s2')
        s3 = self.addSwitch('s3')
        h1 = self.addHost('h1')
        h2 = self.addHost('h2')
        h3 = self.addHost('h3')

        self.addLink(s1, s2)
        self.addLink(s2, s3)
        self.addLink(s3, s1)
        self.addLink(s1, h1)
        self.addLink(s2, h2)
        self.addLink(s3, h3)
        # info('llegue al final de mitopo\n')

# topos = { 'TopoMia': ( lambda: MiTopo() ) }
