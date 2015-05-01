#!/usr/bin/env bash
echo ========================================================================
echo == CouchDB - all users
echo ========================================================================
source ./login.sh "Please login as an administrator"

read -p "Database to show: " DATABASE
curl --cookie cookies.txt --user-agent Mozilla/4.0 -X GET $COUCHDB/$DATABASE/_all_docs