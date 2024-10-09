#!/bin/bash

# Detect if running on Windows or Linux
if [[ "$(uname -s)" == *"Linux"* ]]; then
    echo "Running on Linux. Using docker-compose-linux.yml"
    cp docker-compose-linux.yml docker-compose.yml
else
    echo "Running on Windows. Using docker-compose-windows.yml"
    cp docker-compose-windows.yml docker-compose.yml
fi
