#!/usr/bin/env bash

echo ========================================================================
echo == CouchDB - Enable Cross-origin resource sharing - CORS
echo ========================================================================


echo "First login to CouchDB as an admin..."
read    -p "Admin Username: " ADMIN
read -s -p "Admin Password: " ADMPWD
echo
HOST=http://$ADMIN:$ADMPWD@localhost:5984

curl -X PUT $HOST/_config/httpd/enable_cors -d '"true"'
curl -X PUT $HOST/_config/cors/origins -d '"*"'
curl -X PUT $HOST/_config/cors/credentials -d '"true"'
curl -X PUT $HOST/_config/cors/methods -d '"GET, PUT, POST, HEAD, DELETE"'
curl -X PUT $HOST/_config/cors/headers -d '"accept, authorization, content-type, origin, referer, x-csrf-token, X-Requested-With"'
