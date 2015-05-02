#!/usr/bin/env bash
source ./settings.sh


if [ -f cookies.txt ]; then
    read -p "Re-login? (y/N): " LOGIN
    if [ "$LOGIN" == "y" ]; then
       rm -f cookies.txt
    fi
fi

if [ ! -f cookies.txt ]; then
    echo $1
   source cookie-authentication.sh
fi
