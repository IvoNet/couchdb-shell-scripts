#!/usr/bin/env bash
echo ========================================================================
echo == CouchDB - Create a database...
echo ========================================================================
source ./login.sh "Please login as an administrator"


read    -p "Database name : " DATABASE
curl --cookie cookies.txt --user-agent Mozilla/4.0 -X PUT $COUCHDB/$DATABASE