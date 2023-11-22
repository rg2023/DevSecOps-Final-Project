#!/bin/bash
if [ $# -eq 0 ]; then
    docker stop devconnect
    docker rmi -f devconnect 
else
    docker rmi -f devconnect:$1
    docker stop devconnect:$1
fi
docker rm -f devconnect 