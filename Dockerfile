FROM alpine:latest

RUN apk add --update openssl bash socat jq && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

VOLUME ["/pki"]

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

COPY ./bashttpd.conf /etc/

EXPOSE 80

WORKDIR /etc

CMD ["socat", "TCP4-LISTEN:80,fork", "EXEC:/usr/local/bin/bashttpd"]