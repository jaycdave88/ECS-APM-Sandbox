FROM jenkins/jenkins:2.192

#COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

#COPY init.groovy.d/configure-tunnel-ip.groovy /usr/share/jenkins/ref/init.groovy.d/configure-tunnel-ip.groovy

USER root 

RUN wget -O dd-java-agent.jar 'https://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=com.datadoghq&a=dd-java-agent&v=LATEST'

ENV JAVA_OPTS="-javaagent:./dd-java-agent.jar -Djenkins.install.runSetupWizard=false -Xmx3072m -XX:MaxPermSize=512m"