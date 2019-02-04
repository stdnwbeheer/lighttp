#!/bin/bash

#Stop container procedure
cleanup() {
    echo "Container stopped, performing cleanup..."
    /etc/init.d/lighttpd stop
}

#Trap SIGTERM
trap 'cleanup' SIGTERM

#Start container procedure
/etc/init.d/lighttpd start
tail -f /dev/null &

#Wait
wait $!
