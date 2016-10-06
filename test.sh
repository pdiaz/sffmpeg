#!/bin/bash

docker build -f Dockerfile-test --tag=sffmpeg-tester .

#docker run -i -t --entrypoint /bin/bash

docker run sffmpeg-tester:latest
