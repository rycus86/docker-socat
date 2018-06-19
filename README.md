# socat

[![Build Status](https://travis-ci.org/rycus86/docker-socat.svg)](https://travis-ci.org/rycus86/docker-socat)

This project builds Docker images with socat installed, and configured to pipe incoming connections on TCP port `2375` to the Docker engine UNIX socket at `/var/run/docker.sock`. This allows connecting to remote Docker engines like this:

```shell
$ docker -H tcp://remote:2375 ps
```

## Tags

- `latest`: the default
- `armhf`: to use on `armhf` hosts (like the Raspberry Pi)
- `aarch64`: to use on `aarch64` (or `arm64v8`) hosts (like the Pine 64)

## Usage

`docker run -d --restart always -v /var/run/docker.sock:/var/run/docker.sock -p 2375:2375 --name socat rycus86/docker-socat`

## Docker Hub

This image is available on [Docker Hub](https://hub.docker.com/r/rycus86/docker-socat/)

## Credits

Based on [docksal/service-socat](https://github.com/docksal/service-socat)

## License

MIT