#!/bin/bash

LOGFILE="server.log"

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Log file not found!"
    exit 1
fi

# Count lines containing "Error"
COUNT=$(grep -c "Error" "$LOGFILE")

echo "Number of lines containing 'Error': $COUNT"
