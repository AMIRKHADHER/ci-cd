# Use Tomcat base image
FROM tomcat:9-jdk17




# Copy the Spring Boot WAR file to the Tomcat webapps directory
COPY target/myapp.war /usr/local/tomcat/webapps

# Expose the port Tomcat is listening on (default 8080)
EXPOSE 8888

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
