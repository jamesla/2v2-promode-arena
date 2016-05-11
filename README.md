# 2v2 promode on oldschool ra3 maps

A docker image for 2v2 promode arena on classic ra3 maps with a fun ruleset based on https://github.com/dpadgett/ql-docker.

## Installation and Usage

To start a new server using this image:

1. git clone --recursive https://github.com/jamesla/ql-docker.git
2. cd 2v2-promode-arena && ./docker-deploy.sh

The image exposes a few environment variables to control deployment - change these in docker-deploy.sh and rerun it to take effect.

1. `name`: The name of the server
2. `admin`: The steamid of the server admin.  This person will automatically get rcon access to the server when they are connected.
3. `gameport`: The port to start the server on.
4. `rconport`: The port to listen for remote rcon connections from.

## License

Apache 2.0
