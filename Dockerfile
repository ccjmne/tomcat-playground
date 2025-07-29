FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml pom.xml
RUN mvn dependency:go-offline
COPY src src
RUN mvn clean package

FROM tomcat:11.0
RUN rm -rf webapps/*
COPY server.xml conf/
COPY --from=build /app/target/app-1.0-SNAPSHOT.war webapps/ROOT.war
