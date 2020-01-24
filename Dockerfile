FROM jenkins/jenkins:2.192
USER root

RUN apt-get update && apt-get install -y curl

RUN apt-get update

RUN apt-get install nano

RUN wget -O dd-java-agent.jar 'https://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=com.datadoghq&a=dd-java-agent&v=LATEST'