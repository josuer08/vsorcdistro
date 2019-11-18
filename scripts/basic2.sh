#!/bin/bash
: '
Written by: Felix G. Tejada

This script is applied to a linear 3 topo, just for show the example
'
echo "Cleaning all flows entry switch dpid 2 and 3"
curl -X DELETE http://localhost:8080/stats/flowentry/clear/2
curl -X DELETE http://localhost:8080/stats/flowentry/clear/3
echo "adding new flows entry to switches 2 and 3"

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
        "eth_type":0x0800,
        "in_port":1

    },
    "actions":[
        {
            "type":"EMPTY"
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
        "eth_type":0x0800,
        "in_port":2

    },
    "actions":[
        {
            "type":"EMPTY"
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
curl -X POST -d '{
    "dpid": 3,
    "cookie": 1,
    "cookie_mask": 1,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 11111,
    "flags": 1,
    "match":{
        "eth_type":0x0800,
        "in_port":1

    },
    "actions":[
        {
            "type":"EMPTY"
        }
    ]
 }' http://localhost:8080/stats/flowentry/add

curl -X POST -d '{
    "dpid": 3,
    "cookie": 1,
    "cookie_mask": 1,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 22222,
    "flags": 1,
    "match":{
	"eth_type":0x0800,
        "in_port":2
    },
    "actions":[
        {
            "type":"EMPTY"
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
echo "Connectivity from h2 to h3 droped"
echo "Done"

