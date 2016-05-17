#!/usr/bin/env bash

docker rm -f /redis
docker rm -f ql
docker build -t quakelive .
docker run -d --name redis -v ql-redis:/data redis
docker run -p 27960:27960/udp --link redis -d --name ql -e name="2v2 hardouts only (old school maps" -e admin="76561197961679861" quakelive
