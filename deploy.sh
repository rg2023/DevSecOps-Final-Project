#!/bin/bash
version='latest'
if [ $# -ne 0 ]; then
  # Arguments were passed, so use them
  version=$1
fi
docker tag devconnect:${version} me-west1-docker.pkg.dev/devconnect-project/rachel-gershon-artifacts/devconnect:${version}
docker push me-west1-docker.pkg.dev/devconnect-project/rachel-gershon-artifacts/devconnect:${version}
