#!/bin/bash

#login into DockerHub:
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS

#building a image:
docker build -t capstone .

#running a container from the created image:
docker run -d -it --name react -p 80:80 capstone

#pushing the image to dockerhub:
docker tag capstone  pavi2244/capstone
docker push pavi2244/capstone
