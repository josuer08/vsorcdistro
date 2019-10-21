#!/bin/sh

sudo ./bin/ryu-manager --observe-links ryu/app/sdnhub_apps/fileserver.py ryu/app/sdnhub_apps/host_tracker_rest.py  ryu/app/rest_topology.py ryu/app/sdnhub_apps/stateless_lb_rest.py ryu/app/sdnhub_apps/tap_rest.py ryu/app/ofctl_rest.py
