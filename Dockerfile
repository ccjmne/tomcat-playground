FROM maven:3.9.6-eclipse-temurin-17 AS build
COPY ./whatever/pom.xml /whatever/pom.xml
WORKDIR /whatever
RUN mvn dependency:go-offline
COPY ./whatever /whatever
RUN mvn clean package

FROM tomcat:10.0
RUN rm -rf webapps/*
COPY server.xml /usr/local/tomcat/conf/
COPY --from=build /whatever/target/whatever-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
