#! /bin/sh

(cd whatever && mvn clean package)
docker build -t tomcat-remoteipvalve .
docker run --rm -it --name tomcat-remoteipvalve -p 8080:8080 tomcat-remoteipvalve
