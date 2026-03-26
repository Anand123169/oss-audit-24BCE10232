#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: [Your Name]
# Description: This script analyzes important system directories
# and displays their permissions and disk usage.

# -------- DIRECTORY LIST --------
# Define important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# -------- LOOP THROUGH DIRECTORIES --------
# Iterate through each directory
for DIR in "${DIRS[@]}"; do
    
    # Check if directory exists
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        # Display information
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist"
    fi
done

# -------- PYTHON DIRECTORY CHECK --------
# Check if Python directory exists
PYTHON_DIR="/usr/lib/python3"

if [ -d "$PYTHON_DIR" ]; then
    echo "Python directory exists:"
    ls -ld $PYTHON_DIR
else
    echo "Python directory not found"
fi
