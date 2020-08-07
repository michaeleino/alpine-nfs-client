FROM alpine:3.12

LABEL maintainer="Michael Fayez <michaeleino@hotmail.com>"

ADD https://github.com/just-containers/s6-overlay/releases/download/v2.0.0.1/s6-overlay-amd64.tar.gz /tmp/

RUN apk update && apk upgrade && \
    apk add --no-cache nfs-utils bash lftp && \
    rm -rf /var/cache/apk/* && \
    tar xzf /tmp/s6-overlay-amd64.tar.gz -C / && \
    rm /tmp/s6-overlay-amd64.tar.gz

COPY files /

ENTRYPOINT ["/init"]
