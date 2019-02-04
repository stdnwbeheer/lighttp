#!/bin/bash

#Stop container procedure
cleanup() {
    echo "Container stopped, performing cleanup..."
    systemctl stop lighttp
}

#Trap SIGTERM
trap 'cleanup' SIGTERM

#Start container procedure
systemctl start lighttp
tail -f /dev/null &

#Wait
wait $!
