FROM ubuntu:trusty

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git build-essential devscripts debhelper unzip libnetcdf-dev \
    cmake automake libtool pkg-config curl mercurial

WORKDIR /sffmpeg

VOLUME /ffmpeg-bin

COPY ./ /sffmpeg/

CMD make deb && cp /sffmpeg*.deb /ffmpeg-bin
