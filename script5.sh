#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: [Your Name]
# Description: This script collects user input and generates
# a personalized open-source philosophy statement.

echo "Answer the following questions:"
echo ""

# -------- USER INPUT --------
# Take input from user
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you? " FREEDOM
read -p "3. What would you like to build and share? " BUILD

# -------- VARIABLES --------
# Store current date and output file name
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# -------- GENERATE OUTPUT --------
# Create manifesto and save to file
echo "On $DATE, I believe in open source because tools like $TOOL represent $FREEDOM. In the future, I want to build $BUILD and share it freely with others." > $OUTPUT

# -------- DISPLAY OUTPUT --------
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
