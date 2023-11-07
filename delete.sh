#docker stop devconnect
#docker rm devconnect
#docker rmi devconnect 
#!/bin/bash
docker stop devconnect
if [ $# -eq 0 ]; then
    docker rmi -f devconnect 
else
    docker rmi -f devconnect:$1
fi
docker rm -f devconnect 