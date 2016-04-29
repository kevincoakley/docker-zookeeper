#!/bin/sh

ZOOKEEPER=$(echo stat | nc -v 127.0.0.1 2181)

echo $ZOOKEEPER

if [[ $ZOOKEEPER == *"Mode: standalone"* ]];
then
    exit 0;
else
    exit 1;
fi
