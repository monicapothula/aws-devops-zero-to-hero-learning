#!/bin/bash
set -e

echo "Hi"

# Get ONLY container IDs without header rows (-q)
containerid=$(docker ps -q)

# Only run docker rm if there is actually a container running
if [ -n "$containerid" ]; then
    docker rm -f $containerid
else
    echo "No running containers found."
fi
