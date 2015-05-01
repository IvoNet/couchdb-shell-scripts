# CouchDB configuration scripts

This repository hosts a couple of [CouchDB](http://couchdb.apache.org) configuration
scripts. The scrips are meant to make life just a bit easier.

# Scripts

## first-admin.sh

To create the first admin user after a clean install. 
This script should only be used once.
All other scripts will assume that this script has been run or in
other words, make sure CouchDB is at least secured with an admin user.

## CORS.sh

This script configures CouchDB to enable Cross-origin resource sharing (CORS).
This means that JavaScript from another domain can access the API of CouchDB.
Make sure you know what you are doing before using this.

## admin-users.sh

Script for easily creating extra admin users.  


## users.sh
 
Script for easily creating users. 
Users are created without any ROLES. 
You can later add these through the console.

