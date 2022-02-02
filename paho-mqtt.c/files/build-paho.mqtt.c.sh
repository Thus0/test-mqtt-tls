#!/bin/sh
# description: build and install tinydtls (develop branch) library
#
#        author: Thus0
# last modified: 2022-02-02 20:51

# Exit on undefined variable and first error
set -u
set -e

# Configuration
PREFIX=/usr/local

# Create PREFIX directory
mkdir -p "${PREFIX}"

# Clone pano.mqtt.c repository
cd /app || exit 1
git clone -b master --single-branch --depth 1 \
	https://github.com/eclipse/paho.mqtt.c.git

# Build and install paho.mqtt.c library
mkdir -p /app/build.paho
cd /app/build.paho
# To debug : add -DCMAKE_BUILD_TYPE=Debug
cmake -GNinja -DPAHO_WITH_SSL=TRUE -DPAHO_BUILD_DOCUMENTATION=FALSE -DPAHO_BUILD_SAMPLES=TRUE /app/paho.mqtt.c

# Compile/Link binaries
ninja

# Compile/Link binaries and generate packages
#ninja package

# Install binaries
ninja install
