#!/bin/sh
set -x

cub zk-ready zookeeper:22181 120
kafka-configs --zookeeper zookeeper:22181 --alter --add-config "SCRAM-SHA-256=[password=!@#^()%n&0*ABCDabcd123]" --entity-type users --entity-name kafkaclient
kafka-configs --zookeeper zookeeper:22181 --alter --add-config "SCRAM-SHA-256=[password=password]" --entity-type users --entity-name admin

