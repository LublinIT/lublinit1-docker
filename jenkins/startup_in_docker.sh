#!/bin/bash
docker create -v /var/jenkins_home --name lublit-jenkins-home jenkins
# in below example we use "jenkins in docker solution"
# -d - run in background
# --name lublit-jenkins - name of the running container
# -- volumes-from lublit-jenkins-home - point to get projects and jenkins configuration
# -u root - run as root user
# -v /var/run/docker.sock:/var/run/docker.sock - point docker on instance to docker in jenkins to build images and start containers from jenkins projects
# --link selenium-standalone-chrome:selenium-standalone-chrome - link to selenium to run E2E tests
# -e HOST=$(hostname --ip) - pass IP address of instance to pass it to other apps
# -p 8080:8080 -p 50000:50000 tunel port 8080 to 8080 on instance
docker run -d --name lublit-jenkins --volumes-from lublit-jenkins-home \
      -u root -v /var/run/docker.sock:/var/run/docker.sock \
      --link selenium-standalone-chrome:selenium-standalone-chrome \
      -e HOST=$(hostname --ip) \
      -p 8080:8080 -p 50000:50000 jenkins
