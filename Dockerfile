FROM ubuntu:trusty

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git build-essential devscripts debhelper unzip \
    cmake automake libtool pkg-config curl mercurial

RUN git clone https://github.com/pdiaz/sffmpeg.git

WORKDIR /sffmpeg

VOLUME /ffmpeg-bin

CMD git pull && make deb && cp /sffmpeg*.deb /ffmpeg-bin
