FROM openjdk:11
EXPOSE 8080
ADD target/maven-project.war maven-project.war
ENTRYPOINT ["java","-war","/maven-project.war"] 