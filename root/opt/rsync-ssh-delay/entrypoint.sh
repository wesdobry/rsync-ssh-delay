#!/bin/bash

echo -e "------------------------------------------------------------"
echo -e "rsync container with wrapper delay script\n\n"

while :
do
    echo -e "rsyncing $SOURCE to $DESTINATION"
    echo -e "Command: rsync $ARGS $SOURCE $DESTINATION\n\n"

    rsync $ARGS $SOURCE $DESTINATION

    echo -e "\n\nSleeping for $DELAY seconds\n\n"
    sleep $DELAY
done
