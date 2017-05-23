#!/bin/bash
docker build -t lublit-php-img .
docker run -p 8003:80 --name lublit-php lublit-php-img
# docker run -v /Users/pom/Workspace/LublinIT/lublit1/php/src/:/var/www/html -p 8003:80 --name lublit-php lublit-php-img
