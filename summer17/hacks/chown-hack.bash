#!/bin/bash
while true; do
    find . -maxdepth 1 -group nogroup -exec chown -v 1000:1000 {} \;
    sleep 1
done
