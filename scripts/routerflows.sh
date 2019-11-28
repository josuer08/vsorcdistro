#!/bin/bash
: '
Este script hace peticiones HTTP POST a la API REST del codigo que debe estar corriendo
en el controlador,llamado rest_router.py.

Written by: Felix Tejada & Oscar Rodriguez
'
echo "Setting address to the routers..."
echo
curl -X POST -d '{"address":"172.16.10.1/24"}' http://localhost:8080/router/0000000000000002
echo
curl -X POST -d '{"address": "172.16.30.1/24"}' http://localhost:8080/router/0000000000000002
echo
curl -X POST -d '{"address": "192.168.10.1/24"}' http://localhost:8080/router/0000000000000002
echo
curl -X POST -d '{"address":"172.16.20.1/24"}' http://localhost:8080/router/0000000000000001
echo
curl -X POST -d '{"address": "172.16.30.30/24"}' http://localhost:8080/router/0000000000000001
echo
curl -X POST -d '{"address": "192.168.30.1/24"}' http://localhost:8080/router/0000000000000003
echo
curl -X POST -d '{"address": "192.168.10.20/24"}' http://localhost:8080/router/0000000000000003
echo
#Setting default routes
echo "Setting default routes..."
echo
curl -X POST -d '{"gateway": "172.16.30.1"}' http://localhost:8080/router/0000000000000001
echo
curl -X POST -d '{"gateway": "172.16.30.30"}' http://localhost:8080/router/0000000000000002
echo
curl -X POST -d '{"gateway": "192.168.10.1"}' http://localhost:8080/router/0000000000000003
echo
#Setting static routes
echo "Setting a static route to the router 2"
echo
curl -X POST -d '{"destination": "192.168.30.0/24", "gateway": "192.168.10.20"}' http://localhost:8080/router/0000000000000002
echo
echo "Done"
