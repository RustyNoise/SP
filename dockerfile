FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y
WORKDIR /usr/src/app/
COPY script.sh /usr/src/app/script.sh
