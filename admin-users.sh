#!/usr/bin/env bash

echo ========================================================================
echo == CouchDB - Create extra admin users...
echo ========================================================================
source ./login.sh "Please login as an Administrator..."

while true
do
read    -p "New Administrator: " USER
read -s -p "New Password     : " PASSWORD
echo
curl --cookie cookies.txt --user-agent Mozilla/4.0 -X PUT $COUCHDB/_config/admins/$USER -d '"'$PASSWORD'"'

read -p "Another admin (y/n)? " CONT
if [ "$CONT" == "n" ]; then
  exit 0;
fi
done
