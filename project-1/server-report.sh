#!/bin/bash

REPORT="server-report.txt"

{
    echo "================================"
    echo "       LINUX SERVER REPORT"
    echo "================================"

    echo ""
    echo "Date and Time:"
    date

    echo ""
    echo "Hostname:"
    hostname

    echo ""
    echo "Operating System:"
    grep PRETTY_NAME /etc/os-release

    echo ""
    echo "Server Uptime:"
    uptime

    echo ""
    echo "CPU Cores:"
    nproc

    echo ""
    echo "Memory Information:"
    free -h

    echo ""
    echo "Disk Information:"
    df -h

    echo ""
    echo "================================"
    echo "        REPORT COMPLETED"
    echo "================================"

} > "$REPORT"

echo "Server report generated successfully!"
echo "Report location: $REPORT"
