#!/bin/bash
# Script 4: Log File Analyzer
# Author: [Your Name]
# Description: This script reads a log file, counts occurrences
# of a keyword, and displays matching lines.

# -------- VARIABLES --------
# Define log file and keyword
LOGFILE="/var/log/syslog"
KEYWORD="error"
COUNT=0

# -------- FILE CHECK --------
# Check if the log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: Log file not found!"
    exit 1
fi

# -------- READ FILE --------
# Read the file line by line
while IFS= read -r LINE; do
    
    # Check if line contains keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        
        # Increment counter
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# -------- OUTPUT --------
# Display total count
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Display last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
