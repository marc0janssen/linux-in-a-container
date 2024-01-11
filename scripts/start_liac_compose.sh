#!/bin/sh

docker-compose -p "linux-in-a-container" -f /home/pi/docker/liac/scripts/docker-compose.yml up -d --remove-orphans
