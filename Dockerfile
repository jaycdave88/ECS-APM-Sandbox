FROM jenkins/jenkins:2.192

USER root

RUN apt-get update && apt-get install -y curl 

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh

USER jenkins