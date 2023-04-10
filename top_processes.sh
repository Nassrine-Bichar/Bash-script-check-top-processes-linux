#!/bin/bash

# Get the top 5 processes by CPU usage
cpu_processes=$(ps -eo pid,%cpu,comm --sort=-%cpu | head -6)

# Get the top 5 processes by memory usage
memory_processes=$(ps -eo pid,%mem,comm --sort=-%mem | head -6)

# Print the results
echo "Top CPU processes:"
echo "$cpu_processes"
echo
echo "Top memory processes:"
echo "$memory_processes"
