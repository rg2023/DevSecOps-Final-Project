#!/bin/bash
docker tag jenkins:v0.0.2 me-west1-docker.pkg.dev/devconnect-project/rachel-gershon-artifacts/jenkins:v0.0.2
docker push me-west1-docker.pkg.dev/devconnect-project/rachel-gershon-artifacts/jenkins:v0.0.2
gcloud compute ssh rachel-gershon-jenkins --project devconnect-project --zone us-central1-a --command " 
docker pull me-west1-docker.pkg.dev/devconnect-project/rachel-gershon-artifacts/jenkins:v0.0.2
docker run -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home --name jenkins_con me-west1-docker.pkg.dev/devconnect-project/rachel-gershon-artifacts/jenkins:v0.0.2"













