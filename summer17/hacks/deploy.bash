#!/bin/bash
# Deploy changes to the chown-hack script

systemctl stop chown-hack

# Do set -e here so the stop failing above doesn't affect us
set -e
cp chown-hack.bash /usr/local/bin/chown-hack.bash
cp chown-hack.service /etc/systemd/system/chown-hack.service
systemctl daemon-reload

systemctl start chown-hack
systemctl status chown-hack
