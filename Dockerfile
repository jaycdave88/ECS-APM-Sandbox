FROM jenkins/jenkins:2.192

USER root
RUN apt-get update && apt-get install -y curl 

ADD entrypoint.sh /entry-point.sh
RUN chmod +x /entry-point.sh
CMD /entry-point.sh