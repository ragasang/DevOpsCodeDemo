FROM tomcat:9
COPY /var/lib/jenkins/workspace/PipelineDemo1/target/addressbook.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
