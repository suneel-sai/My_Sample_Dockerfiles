FROM rpm packages
MAINTAINER SuneelSai
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl/wget -O https://www-eu.apache.org/dist/tomcat/tomcat-latest-version/bin/apache-tomcat-latest-version.tar.gz
RUN tar -xvfz apache*.tar.gz
RUN mv apache-tomcat-latest-version/* /opt/tomcat/.
RUN yum -y install java
WORKDIR /opt/tomcat/webapps
# COPY or ADD the contents of the war/jar/ear files to the Webapp folder
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]