#!/usr/bin/env bash

echo ========================================================================
echo == CouchDB - Create extra admin users...
echo ========================================================================


echo "First login to CouchDB as an admin..."
read    -p "Admin Username: " ADMIN
read -s -p "Admin Password: " ADMPWD
echo
COUCH=http://$ADMIN:$ADMPWD@localhost:5984

echo "Now you can add new admins to CouchDB..."

while true
do
read    -p "New Administrator: " USER
read -s -p "New Password     : " PASSWORD
echo
curl -X PUT $COUCH/_config/admins/$USER -d '"'$PASSWORD'"'

read -p "Another admin (y/n)? " CONT
if [ "$CONT" == "n" ]; then
  exit 0;
fi
done
