#!/bin/bash

echo "rsync container with wrapper delay script\n\n"

while :
do
    echo "rsyncing $SOURCE to $DESTINATION"
    echo "Command: rsync $ARGS $SOURCE $DESTINATION\n\n"

    rsync $ARGS $SOURCE $DESTINATION

    echo "\n\nSleeping for $DELAY seconds\n\n"
    sleep $DELAY
done
