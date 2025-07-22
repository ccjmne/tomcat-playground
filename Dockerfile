FROM tomcat:10.0
RUN rm -rf webapps/*
COPY server.xml /usr/local/tomcat/conf/
COPY ./whatever/target/whatever-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
