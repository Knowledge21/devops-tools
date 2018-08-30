FROM jenkins
USER root
RUN apt-get update && apt-get install ant maven build-essential -y
RUN curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
