#!/bin/bash

set -eo pipefail
[[ "$TRACE" ]] && set -x

rm -rf ./ffmpeg-bin/sffmpeg_*.deb ../sffmpeg_*.deb

docker build --tag=sffmpeg-builder .
docker run --cpu-quota=800000 -v $PWD/ffmpeg-bin:/ffmpeg-bin sffmpeg-builder:latest
cp ffmpeg-bin/sffmpeg_*.deb ../
