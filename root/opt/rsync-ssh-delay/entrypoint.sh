#!/bin/bash

echo 'rsync container with wrapper delay script\n\n'

while :
do
    echo 'rsyncing $SOURCE to $DESTINATION'
    echo 'Command: rsync $ARGS $SOURCE $DESTINATION'

    rsync $ARGS $SOURCE $DESTINATION

    echo 'Sleeping for $DELAY seconds\n\n'
    sleep $DELAY
done
