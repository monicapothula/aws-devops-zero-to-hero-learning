#!/bin/bash
set -e

containerid=$(docker ps | awk '{print $1}')
docker rm -f $containerid
