
FROM jenkins/jenkins:lts

# Install recommended plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugins < /usr/share/jenkins/ref/plugins.txt
