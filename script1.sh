#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name]

STUDENT_NAME="Your Name"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

DISTRO=$(lsb_release -d | cut -f2)

echo "===================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "===================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "Distro          : $DISTRO"
echo "License         : Linux is mostly licensed under GPL"
