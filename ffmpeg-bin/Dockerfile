FROM ubuntu:trusty

RUN apt-get update && apt-get upgrade -y
COPY sffmpeg_2.8.5_amd64.deb /
RUN dpkg -i /sffmpeg_2.8.5_amd64.deb
