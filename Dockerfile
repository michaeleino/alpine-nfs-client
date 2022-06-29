FROM alpine:3.16

LABEL maintainer="Michael Fayez <michaeleino@hotmail.com>"

ADD https://github.com/just-containers/s6-overlay/releases/download/v3.1.1.2/s6-overlay-x86_64.tar.xz /tmp/

RUN apk update && apk upgrade && \
    apk add --no-cache nfs-utils bash lftp tzdata && \
    rm -rf /var/cache/apk/* && \
    tar xf /tmp/s6-overlay-x86_64.tar.xz -C / && \
    rm /tmp/s6-overlay-amd64.tar.gz

COPY files /

ENTRYPOINT ["/init"]
