FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml pom.xml
RUN mvn dependency:go-offline
COPY src src
RUN mvn package

FROM tomcat:11-jre17
RUN rm -rf webapps/*
COPY server.xml conf/
COPY --from=build /app/target/app-1.0-SNAPSHOT.war webapps/ROOT.war
ARG DEBUG=no
RUN case $DEBUG in \
  [yY]*) echo 'CATALINA_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"' >> bin/setenv.sh ;; \
esac
