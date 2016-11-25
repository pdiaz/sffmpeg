FROM ubuntu:xenial

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git build-essential devscripts debhelper unzip \
    cmake automake libtool pkg-config curl mercurial

WORKDIR /sffmpeg

VOLUME /ffmpeg-bin

COPY ./ /sffmpeg/

CMD MAKEJ=-j8 make deb && cp /sffmpeg*.deb /ffmpeg-bin
