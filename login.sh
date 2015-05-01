#!/usr/bin/env bash
source ./settings.sh
if [ ! -f cookies.txt ]; then
    echo $1
   source cookie-authentication.sh
fi
