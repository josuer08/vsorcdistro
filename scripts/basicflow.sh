#!/bin/bash
: '
Written by: Felix G. Tejada

This script is applied to a linear 3 topo, just for show the example
'
curl -X DELETE http://localhost:8080/stats/flowentry/clear/1
curl -X DELETE http://localhost:8080/stats/flowentry/clear/2
echo "adding new flows entry to switches 1 and 2"
curl -X POST -d '{
    "dpid": 1,
    "cookie": 0,
    "cookie_mask": 0,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 100,
    "flags": 0,
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
sleep 1
curl -X POST -d '{
    "dpid": 1,
    "cookie": 0,
    "cookie_mask": 0,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 101,
    "flags": 0,
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
sleep 1
curl -X POST -d '{
    "dpid": 2,
    "cookie": 0,
    "cookie_mask": 0,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 200,
    "flags": 0,
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
sleep 1
curl -X POST -d '{
    "dpid": 2,
    "cookie": 0,
    "cookie_mask": 0,
    "table_id": 0,
    "idle_timeout": 0,
    "hard_timeout": 0,
    "priority": 201,
    "flags": 0,
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

echo "Connectivity from h1 to h2"
echo "Done"

