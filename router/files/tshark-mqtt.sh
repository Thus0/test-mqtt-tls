#!/bin/sh
# https://www.wireshark.org/docs/dfref/c/coap.html

MQTT_PORT=1883

tshark --color -f "tcp and port ${MQTT_PORT}" -F pcapng -w dumps/mqtt.pcapng
