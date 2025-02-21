# Use Tomcat base image
FROM tomcat:9-jdk17

# Set environment variables for Tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV CATALINA_BASE /usr/local/tomcat

# Remove the default web apps in Tomcat (optional)
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy the Spring Boot WAR file to the Tomcat webapps directory
COPY **/*.war $CATALINA_HOME/webapps/

# Expose the port Tomcat is listening on (default 8080)
EXPOSE 8888

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
