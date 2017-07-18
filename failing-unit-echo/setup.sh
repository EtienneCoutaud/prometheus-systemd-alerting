#!/bin/sh
export TZ=Europe/Paris
sudo mv /tmp/failing-unit.service /etc/systemd/system/failing-unit.service
sudo mv /tmp/echo@.service /etc/systemd/system/echo@.service
sudo systemctl daemon-reload
