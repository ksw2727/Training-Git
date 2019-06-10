#!/bin/bash

############################################################################################################
#assignment #3 ...rename to system_inspect.sh
#   This script should Write a bash script to inspect certain aspects of a system.
#1. This bash script should be called: system_inspect.sh
#2. Print out the line, this will be called the "separator line" like this: ================================
#3. Print out the "full" status of the following services:ntpd sshd snmpd #Print out the "separator line"
#4. Install the package cowsay #Print out the "yum info" for cowsay #Print out the "separator line"
#5. Print the last 10 lines in the systemd journal log
############################################################################################################

#2. Print out the line, this will be called the "separator line" like this: ================================
    separatorline="================================"
    echo $separatorline

#3. Print out the "full" status of the following services:ntpd sshd snmpd #Print out the "separator line"
    systemctl status ntpd sshd snmpd
    echo $separatorline

#4. Install the package cowsay #Print out the "yum info" for cowsay #Print out the "separator line"
    yum install cowsay -y
    yum info cowsay
    echo $separatorline

#5. Print the last 10 lines in the systemd journal log
    journalctl -n 10
    echo $separatorline
