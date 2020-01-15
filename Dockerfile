FROM jenkins/jenkins:2.192
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root
RUN apt-get update && apt-get install -y curl 

ADD entrypoint.sh /entry-point.sh
RUN chmod +x /entry-point.sh
CMD /entry-point.sh