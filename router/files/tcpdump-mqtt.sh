#!/bin/sh

MQTT_PORT=1883

tcpdump -XAnvv tcp port ${MQTT_PORT}
