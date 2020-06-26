#!/bin/bash

printf "\nadvertised.listeners=PLAINTEXT://$KAFKA_LISTEN:$KAFKA_PORT" >> /kafka_2.12-2.2.0/config/server.properties
nohup bin/zookeeper-server-start.sh config/zookeeper.properties </dev/null >/dev/null 2>&1 &
zookeeperpid=$!
bin/kafka-server-start.sh config/server.properties
