#!/bin/sh

MQTTS_PORT=8883

tcpdump -XAnvv tcp port ${MQTTS_PORT}
