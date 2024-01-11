#!/bin/sh

docker-compose -p "linux-in-a-container" -f /home/admin/docker/liac/scripts/docker-compose.yml up -d --remove-orphans
