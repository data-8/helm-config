#!/bin/bash
while true; do
    find . -maxdepth 3 -mindepth 3 -group nogroup -exec chown -v 1000:1000 {} \;
    sleep 1
done
