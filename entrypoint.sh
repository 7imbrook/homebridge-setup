#!/bin/bash

# Need to start Bonjour
/etc/init.d/dbus restart
service avahi-daemon start

# Run
homebridge
