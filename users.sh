#!/usr/bin/env bash

echo ========================================================================
echo == CouchDB - Create new users...
echo ========================================================================
source ./login.sh "Please login as an administrator"

while true
do
read    -p "Username: " USER
read -s -p "Password: " PASSWORD
echo
JSON='{"_id": "org.couchdb.user:'$USER'","name":"'$USER'","roles": [],"type": "user","password": "'$PASSWORD'"}'
curl --cookie cookies.txt --user-agent Mozilla/4.0 -HContent-Type:application/json -X PUT $COUCHDB/_users/org.couchdb.user:$USER --data-binary "$JSON"
read -p "Continue (y/n)? " CONT
if [ "$CONT" == "n" ]; then
  exit 0;
fi
done
