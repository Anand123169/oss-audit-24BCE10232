#!/bin/bash
# Script 1: System Identity Report
# This script displays basic system information

# -------- Variables --------
STUDENT_NAME="Anandkrishnan Harikumar"
SOFTWARE_CHOICE="Python"

# -------- System Information --------
KERNEL=$(uname -r)          # Kernel version
USER_NAME=$(whoami)         # Current user
UPTIME=$(uptime -p)         # System uptime
DATE=$(date)                # Current date and time
DISTRO=$(lsb_release -d | cut -f2)   # Linux distribution

# -------- Output --------
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
