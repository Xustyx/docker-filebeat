FROM    bargenson/filebeat

ENV     FILEBEAT_VERSION 1.1.1		
ENV     FILEBEAT_HOME /opt/filebeat-${FILEBEAT_VERSION}-x86_64

ADD     filebeat.yml ${FILEBEAT_HOME}/
ADD     docker-entrypoint.sh    /entrypoint.sh
RUN     chmod +x /entrypoint.sh
