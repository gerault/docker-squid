#!/bin/bash

echo "Build de squid"
docker build -t gerault/docker-squid . --pull
