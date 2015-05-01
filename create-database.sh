#!/usr/bin/env bash


echo ========================================================================
echo == CouchDB - Create a database...
echo ========================================================================


echo "First login to CouchDB as an admin..."
read    -p "Admin Username: " ADMIN
read -s -p "Admin Password: " ADMPWD
echo
COUCH=http://$ADMIN:$ADMPWD@localhost:5984


echo    -p "Database name : " DATABASE
curl -X PUT $COUCH/$DATABASE