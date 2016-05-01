#!/usr/bin/env bash

docker build . -t quakelive
docker run -d --name redis -v ql-redis:/data redis
docker run -p 27960:27960/udp --link redis -d --name ql -e name="Test Server" -e admin="12345" quakelive
