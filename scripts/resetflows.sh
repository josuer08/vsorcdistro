#!/bin/bash
: '
Written by: Felix G. Tejada

This is for clean all flows and set a default one on any switch.
'
dpid=$1
curl -X DELETE http://localhost:8080/stats/flowentry/clear/$dpid
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
echo "Flows was reseted"
