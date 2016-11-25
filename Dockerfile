FROM maluuba/jetty:latest
CMD ["java","-Xmx512m","-jar", "start.jar"]

RUN rm -Rf /opt/jetty/webapps/* && rm -Rf /opt/jetty/contexts/*
RUN mkdir /opt/jetty/properties
WORKDIR /opt/jetty/

ADD ./wlceligue-admin-webapp.war /opt/jetty/webapps/ROOT.war