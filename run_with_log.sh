#!/bin/bash
# Script to run predicators with automatic log saving

# Set required environment variable
export PYTHONHASHSEED=0

# Generate timestamp for unique log filename
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# Run the command and save output to log file with timestamp
python predicators/main.py "$@" 2>&1 | tee "logs/run_${TIMESTAMP}.log"

echo ""
echo "Log saved to: logs/run_${TIMESTAMP}.log"

