#!/bin/sh
# https://www.wireshark.org/docs/dfref/c/coap.html

MQTTS_PORT=8883

tshark --color -f "tcp and port ${MQTTS_PORT}" -F pcapng -w dumps/mqtts.pcapng
