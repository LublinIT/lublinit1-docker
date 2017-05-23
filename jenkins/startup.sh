#!/bin/bash
docker create -v /var/jenkins_home --name lublit-jenkins-home jenkins
docker run -d --name lublit-jenkins --volumes-from lublit-jenkins-home \
      -p 8080:8080 -p 50000:50000 jenkins
