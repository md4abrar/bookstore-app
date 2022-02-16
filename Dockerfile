FROM tomcat:latest
LABEL maintainer "mr.shabuddinshaik@gmail.com"
COPY *.war /usr/local/tomcat/webapps/
