#!/usr/bin/env bash

echo ========================================================================
echo == CouchDB - Execute command...
echo ========================================================================
source ./login.sh "Please login as user with enough rights to do stuff..."

while true
do
read    -p "Which method [GET|PUT|POST|HEAD|DELETE]: " METHOD
if [ -z "$METHOD" ]; then
    METHOD="GET"
fi

#To UpperCase!
METHOD=`echo $METHOD | awk '{print toupper($0)}'`
echo Method: $METHOD


read    -p "Command as relative url                : " COMMAND
echo
curl --cookie cookies.txt --user-agent Mozilla/4.0 -X $METHOD $COUCHDB/$COMMAND

read -p "Another command (y/n)? " CONT
if [ "$CONT" == "n" ]; then
  exit 0;
fi
done
