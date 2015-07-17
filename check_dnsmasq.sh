#!/bin/bash

# @Author       Mouloud AIT-KACI
# @Date         July 2015

# A trivial NRPE plugin script
# Checks if dnsmasq is running

service dnsmasq status > /dev/null

case $? in
        0) echo "OK - dnsmasq is running"; exit 0;;
        [1-3]) echo "CRITICAL - dnsmasq is down"; exit 2;;
        *) echo "UNKNOWN - dafuq?"; exit 3;;
esac
