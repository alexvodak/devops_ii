#!/bin/bash

# OS version
printf %100s |tr " " "="
echo
echo "OS Version:"
cat /etc/*-release | grep PRETTY_NAME | cut -d '"' -f 2
echo

# users with bash shell
printf %100s |tr " " "="
echo
echo "Users with Bash shell:"
cat /etc/passwd | grep "/bash" | cut -d ":" -f 1
echo

# Open Ports list
printf %100s |tr " " "="
echo
echo "Open Ports:"
sudo netstat -tuln
echo
printf %100s |tr " " "="
echo