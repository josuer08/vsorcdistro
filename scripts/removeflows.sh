#!/bin/bash
: '
Written by: Felix G. Tejada

This script is applied to a linear 3 topo, just for show the example
'
echo "Cleaning all flows entry switch dpid 1 and 2"
curl -X DELETE http://localhost:8080/stats/flowentry/clear/1
curl -X DELETE http://localhost:8080/stats/flowentry/clear/2
curl -X DELETE http://localhost:8080/stats/flowentry/clear/3
echo "adding default flows entry to all switches"

curl -X POST -d '{
    "dpid": 1,
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


curl -X POST -d '{
    "dpid": 2,
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

curl -X POST -d '{
    "dpid": 3,
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

