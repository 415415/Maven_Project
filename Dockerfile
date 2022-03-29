FROM tomcat

COPY /target/maven-project.war /opt/dockerdata/maven-project.war

EXPOSE 5555

CMD ["catalina.sh", "run"]


