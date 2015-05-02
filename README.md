# CouchDB configuration scripts

This repository hosts a couple of [CouchDB](http://couchdb.apache.org) configuration
scripts. The scrips are meant to make life just a bit easier.

Added cookie authentication (see cookie-authentications.sh script).
This means that if you have logged in with a user with sufficient rights you can do 
any of the other commands without having to login again (unless the session has expired)

# Scripts

## first-admin.sh

To create the first admin user after a clean install. 
This script should only be used once.
All other scripts will assume that this script has been run or in
other words, make sure CouchDB is at least secured with an admin user.

This script does not make use of the cookie functionality mentioned above.

## CORS.sh

This script configures CouchDB to enable Cross-origin resource sharing (CORS).
This means that JavaScript from another domain can access the API of CouchDB.
Make sure you know what you are doing before using this.

This script does not make use of the cookie functionality mentioned above.

## login.sh

Well checks if cookies.txt already exists and if so only calls settings.sh 
otherwise it will also call cookie-authentication.sh 
Now with re-login option with no as default

## settings.sh

Not a stand-alone script.
Used by other scripts and it containes some configuration settings and standard checks.
This script is used by almost all other scripts.

## cookie-authentication.sh

Cookie based Login. The received cookie will be saved to a cookie.txt file 
is used by almost all commands mentioned below this one.
If you want to login again or as someone else just run the above mentioned script or remove the cookies.txt file.
If the cookies.txt file does not exist the next time you run a command it will ask for credentials.
All commands below will work without having to login in again until you remove the cookies.txt or the session expires.

## admin-users.sh

Script for easily creating extra admin users.

## users.sh
 
Script for easily creating users. 
Users are created without any ROLES. 
You can later add these through the console.

## create-database.sh

Creates databases.


## execute.sh

executes a command of your choice.



