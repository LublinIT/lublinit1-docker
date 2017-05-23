#!/bin/bash
docker build -f Dockerfile-dev -t lublit-react-app-img .
docker run -d -v $(pwd) -p 8005:3000 --name lublit-react-app lublit-react-app-img
#docker run -d -v /Users/pom/Workspace/LublinIT/lublit1/react-app/ -p 8005:3000 --name lublit-react-app lublit-react-app-img
