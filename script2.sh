#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: [Your Name]
# Description: This script checks whether a specific package is installed
# and displays its details along with a short description.

# -------- VARIABLES --------
# Define the package to check
PACKAGE="python3"

# -------- CHECK INSTALLATION --------
# Check if the package is installed using dpkg
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed."
    
    # Display package details
    dpkg -l | grep "$PACKAGE"
else
    echo "$PACKAGE is NOT installed."
fi

# -------- CASE STATEMENT --------
# Provide a description based on package name
case $PACKAGE in
    python3)
        echo "Python: A powerful open-source programming language"
        ;;
    git)
        echo "Git: Distributed version control system"
        ;;
    vlc)
        echo "VLC: Open-source media player"
        ;;
    firefox)
        echo "Firefox: Open-source web browser"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
