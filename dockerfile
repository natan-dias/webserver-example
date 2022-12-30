FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update && apt-get install \
    git -y
WORKDIR /tmp
RUN git clone https://github.com/natan-dias/webserver-example.git
RUN mv src/* /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
EXPOSE 80 443
