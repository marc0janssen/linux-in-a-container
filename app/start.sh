#!/bin/bash

# Name: Linux-In-A-Container
# Coder: Marco Janssen (mastodon @marc0janssen@mastodon.online)
# date: 2024-01-11 21:05:00
# update: 2024-01-11 21:05:00

NOW=$(date +"%d-%m-%Y %H:%M")

ssh-keygen -A

mkdir /var/run/sshd
echo 'root:PASSWORD' | chpasswd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

#RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pecho "${NOW} - *** Starting the crond process"

# Starting Cron proces
nohup crond -l 2 -f &

# Starting SSH Server
nohup /usr/sbin/sshd -D &

# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?am_loginuid.so@g' -i /etc/pam.d/sshd

