#!/bin/bash

if [ -z "$DEVICE_NAME" ]
then
    echo "DEVICE_NAME not defined."
    exit 1
fi

echo "Starting shairport-sync..."

shairport-sync -a "$DEVICE_NAME" -o pipe -- /var/cache/snapcast/snapfifo
