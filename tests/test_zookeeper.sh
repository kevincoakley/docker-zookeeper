#!/bin/sh

ZOOKEEPER=$(echo stat | /bin/nc.traditional -v 127.0.0.1 2181)

echo $ZOOKEEPER

if [[ $ZOOKEEPER == *"Mode: standalone"* ]];
then
    exit 0;
else
    exit 1;
fi
