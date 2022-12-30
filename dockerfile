FROM nginx:latest
USER root
RUN apt-get update && apt-get install \
    git -y
WORKDIR /usr/share/nginx/html
EXPOSE 80 443
