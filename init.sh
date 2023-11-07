#!/bin/bash
version='latest'
if [ $# -ne 0 ]; then
  # Arguments were passed, so use them
  version=$1
fi

docker build -t devconnect:${version} .
docker volume create db
docker run -d -p 8000:8000 -v db:/app --name devconnect devconnect:${version}


