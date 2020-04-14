FROM tomcat:9.0.1-jre8-alpine

ADD . /usr/local/tomcat/webapps/webapp

CMD ["catalina.sh", "run"]