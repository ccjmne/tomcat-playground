FROM maven:3.9.6-eclipse-temurin-17 AS build
COPY ./app/pom.xml /app/pom.xml
WORKDIR /app
RUN mvn dependency:go-offline
COPY ./app /app
RUN mvn clean package

FROM tomcat:10.0
RUN rm -rf webapps/*
COPY server.xml /usr/local/tomcat/conf/
COPY --from=build /app/target/app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
