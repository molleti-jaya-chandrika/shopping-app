#!/bin/bash

PROJECT=$1

if [ -z "$PROJECT" ]; then
    echo "Please provide project name"
    exit 1
fi

mkdir -p "$PROJECT/application"
mkdir -p "$PROJECT/customers"
mkdir -p "$PROJECT/orders"
mkdir -p "$PROJECT/logs"
mkdir -p "$PROJECT/reports"
mkdir -p "$PROJECT/configuration"

echo "Project directory structure created successfully!"
echo "Project Name: $PROJECT"
