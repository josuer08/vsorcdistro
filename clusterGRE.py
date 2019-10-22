#!/usr/bin/python
"clusterGRE.py: Mininet Raspberry Pi Cluster"
from mininet.examples.cluster import MininetCluster, SwitchBinPlacer, RemoteGRELink
from mininet.topolib import TreeTopo
from mininet.log import setLogLevel
from mininet.examples.clustercli import ClusterCLI as CLI
from mininet.node import RemoteController
from topotest import MiTopo
from precompiler import TopoFromCompiler
 
def inicia():
    #IPs = '/home/pi/iplist'
    c = RemoteController('c1', ip='192.168.25.10', port=6633)
    #servers = readIPs(IPs)
    servers = ['192.168.25.2', '192.168.25.3', '192.168.25.4','192.168.25.5','192.168.25.6']
    topo1 = TreeTopo(depth=2, fanout=2)
    topo2 = MiTopo()
    topo3 = TopoFromCompiler()
    net = MininetCluster(topo=topo3, servers=servers, link=RemoteGRELink, placement=SwitchBinPlacer, controller=c)
    net.start()
    CLI(net)
    net.stop()


def readIPs(path):
    file = open(path, "r") #abre el archivo en read
    if file.mode == "r":
        servers = file.read().splitlines() #lee el archivo y lo divide por lineas
    return servers


if __name__ == '__main__':
    setLogLevel('info')
    inicia()
