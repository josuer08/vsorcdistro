#!/bin/bash
: '
Written by: Felix G. Tejada

This script is applied to a linear 3 topo, just for show the example
'
echo "Cleaning all flows entry switch dpid 1 and 2"
curl -X DELETE http://localhost:8080/stats/flowentry/clear/1
curl -X DELETE http://localhost:8080/stats/flowentry/clear/2
echo "adding new flows entry to switches 1 and 2"

curl -X POST -d '{
    "dpid": 1,
    "cookie": 1,
    "cookie_mask": 1,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 11111,
    "flags": 1,
    "match":{
        "in_port":1
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 2
        }
    ]
 }' http://localhost:8080/stats/flowentry/add

curl -X POST -d '{
    "dpid": 1,
    "cookie": 1,
    "cookie_mask": 1,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 22222,
    "flags": 1,
    "match":{
        "in_port":2
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 1
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
curl -X POST -d '{
    "dpid": 2,
    "cookie": 1,
    "cookie_mask": 1,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 11111,
    "flags": 1,
    "match":{
        "in_port":2
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 1
        }
    ]
 }' http://localhost:8080/stats/flowentry/add

curl -X POST -d '{
    "dpid": 2,
    "cookie": 1,
    "cookie_mask": 1,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 22222,
    "flags": 1,
    "match":{
        "in_port":1
    },
    "actions":[
        {
            "type":"OUTPUT",
            "port": 2
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
echo "Connectivity from h1 to h2"
echo "Done"

