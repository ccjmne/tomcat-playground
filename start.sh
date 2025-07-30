#! /bin/sh

if [ $1 == "debug" ]; then
    docker build --build-arg DEBUG=yes -t tomcat-playground .
    docker run --rm -it --name tomcat-playground -p8080:8080 -p5005:5005 tomcat-playground
else
    docker build                       -t tomcat-playground .
    docker run --rm -it --name tomcat-playground -p8080:8080             tomcat-playground
fi
