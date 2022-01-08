#Server
FROM tomcat

RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps

#webapp.war
COPY ./*.war /usr/local/tomcat/webapps