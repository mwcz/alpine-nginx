FROM alpine
MAINTAINER Michael Clayton <mclayton@redhat.com>

ENV LANG en_US.utf8

RUN apk update
RUN apk add nginx curl

RUN mkdir -p /etc/pki/nginx/{certs,private}

ENTRYPOINT ["/usr/local/bin/start"]