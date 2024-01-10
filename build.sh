#!/bin/sh

# Name: monitorsystem
# Coder: Marco Janssen (mastodon @marc0janssen@mastodon.online)
# date: 2024-01-10 20:23:00
# update: 2024-01-10 20:23:00

docker image rm marc0janssen/linux-in-a-container:latest
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --push -t marc0janssen/linux-in-a-container:latest -f ./Dockerfile .
