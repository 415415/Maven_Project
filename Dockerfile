script {
          sh label: '', script: '''rm -rf dockerimg
mkdir /opt/dockerimg
cd /opt/dockerimg
cp /var/lib/jenkins/workspace/docker/target/maven-project.war .
touch dockerfile
cat <<EOT>>dockerfile
FROM tomcat:latest
ADD maven-project.war /usr/local/tomcat/webapps/
CMD ["index.jsp", "run"]
EXPOSE 5555
EOT
