FROM tomcat:9
ENTRYPOINT [bash, cd /var/lib/jenkins/workspace/pipelineDemo/target/PipelineDemo1]
COPY /var/lib/jenkins/workspace/pipelineDemo/target/PipelineDemo1/addressbook.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
