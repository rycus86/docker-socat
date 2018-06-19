ARG BASE_IMAGE="alpine"

FROM $BASE_IMAGE

LABEL maintainer "Viktor Adam <rycus86@gmail.com>"

RUN apk add --no-cache socat

ENTRYPOINT ["socat"]
CMD ["tcp-listen:2375,reuseaddr,fork", "unix-client:/var/run/docker.sock"]
