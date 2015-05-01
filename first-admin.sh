#!/usr/bin/env bash

echo ========================================================================
echo == CouchDB - Create your first administrator...
echo ========================================================================
read    -p "Admin Username: " ADMIN
read -s -p "Admin Password: " ADMPWD
echo
HOST=http://localhost:5984
curl -X PUT $HOST/_config/admins/$ADMIN -d '"'$ADMPWD'"'