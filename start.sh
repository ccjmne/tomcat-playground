#! /bin/sh

# (cd app && mvn clean package)
docker build -t tomcat-playground .
docker run --rm -it --name tomcat-playground -p 8080:8080 tomcat-playground
