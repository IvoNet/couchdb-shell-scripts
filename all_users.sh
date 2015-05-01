#!/usr/bin/env bash
echo ========================================================================
echo == CouchDB - all users
echo ========================================================================
source ./login.sh "Please login as an administrator"

curl --cookie cookies.txt --user-agent Mozilla/4.0 -X GET $COUCHDB/_users/_all_docs