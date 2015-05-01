#!/usr/bin/env bash

echo ========================================================================
echo == CouchDB - Create new users...
echo ========================================================================


echo "First login to CouchDB as an admin..."
read    -p "Admin Username: " ADMIN
read -s -p "Admin Password: " ADMPWD
echo
COUCH=http://$ADMIN:$ADMPWD@localhost:5984
echo "Now you can add new users to CouchDB..."

while true
do
read    -p "Username: " USER
read -s -p "Password: " PASSWORD
echo
JSON='{"_id": "org.couchdb.user:'$USER'","name":"'$USER'","roles": [],"type": "user","password": "'$PASSWORD'"}'
echo "$JSON"
curl -HContent-Type:application/json -vXPUT $COUCH/_users/org.couchdb.user:$USER --data-binary "$JSON"
read -p "Continue (y/n)? " CONT
if [ "$CONT" == "n" ]; then
  exit 0;
fi
done
