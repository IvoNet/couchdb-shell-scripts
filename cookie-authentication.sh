#!/usr/bin/env bash
source ./settings.sh
echo "CouchDB login:"
read    -p "Username: " USER
read -s -p "Password: " PASSWORD
echo
USRPWD='name='$USER'&password='$PASSWORD

#use -vX for mor info
curl --cookie $COUCHDB_COOKIE --cookie-jar $COUCHDB_COOKIE --user-agent Mozilla/4.0 -X POST $COUCHDB/_session --data "$USRPWD"  -H 'Content-Type:application/x-www-form-urlencoded'


#With the following command you can reuse the cookie.
#curl --cookie cookies.txt --user-agent Mozilla/4.0 -X GET $HOST/...
#Depending on the rights of your user you can do stuff.
#if you want to login as a different user just use this script again