#!/bin/bash
: '
Written by: Felix G. Tejada

This script is applied to a linear 3 topo, just for show the example
'
dpid=$1
echo "Cleaning all flows entrys"
curl -X DELETE http://localhost:8080/stats/flowentry/clear/$dpid
echo "adding default flows entry to all switches"
sleep 1
curl -X POST -d '{
    "dpid": "'"$dpid"'",
    "cookie": 0,
    "cookie_mask": 0,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 0,
    "flags": 0,
    "match":{},
    "actions":[
        {
            "type":"OUTPUT",
            "port": "CONTROLLER"
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
echo "Done"
