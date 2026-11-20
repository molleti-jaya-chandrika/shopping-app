#!/bin/bash

REPORT="health-report.txt"

{
    echo "================================"
    echo "     LINUX SERVER HEALTH REPORT"
    echo "================================"

    echo ""
    echo "Date and Time:"
    date

    echo ""
    echo "Hostname:"
    hostname

    echo ""
    echo "Server Uptime and Load Average:"
    uptime

    echo ""
    echo "CPU Cores:"
    nproc

    echo ""
    echo "Top CPU Consuming Processes:"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -6

    echo ""
    echo "Memory Usage:"
    free -h

    echo ""
    echo "Disk Usage:"
    df -h

    echo ""
    echo "Top Memory Consuming Processes:"
    ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -6

    echo ""
    echo "================================"
    echo "      HEALTH REPORT COMPLETED"
    echo "================================"

} > "$REPORT"

echo "Health report generated successfully!"
echo "Report location: $REPORT"
