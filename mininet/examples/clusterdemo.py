#!/usr/bin/python

"pruebaGRE.py: Mininet Raspberry Pi Cluster"

from mininet.examples.cluster import ( MininetCluster, SwitchBinPlacer, RemoteGRELink ) 
                                                                     # ^ Se puede usar: RemoteSSHLink, RemoteGRELink
from mininet.topolib import TreeTopo
from mininet.log import setLogLevel
from mininet.examples.clustercli import ClusterCLI as CLI
from mininet.node import RemoteController

def inicia():
    c1 = RemoteController( 'c1', ip='192.168.25.17', port=6633 )
    servers = [ '192.168.25.2', '192.168.25.3', '192.168.25.4' ]
    topo = TreeTopo( depth=2, fanout=2 )
    net = MininetCluster( topo=topo, servers=servers, link=RemoteGRELink, placement=SwitchBinPlacer, controller=lambda name:RemoteController(name,ip='192.168.25.17'))
    net.start()
    CLI( net )
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'debug' )
    inicia()

