FROM tomcat:latest

COPY /target/maven-project.war /opt/dockerdata/maven-project.war

EXPOSE 5555

