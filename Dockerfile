FROM alpine:edge
LABEL org.opencontainers.image.source=https://github.com/5t-RawBeRry/dnsmasq-docker

RUN apk add --no-cache dnsmasq
RUN rm -rf /var/cache/apk/*

VOLUME /etc/dnsmasq.conf
ENTRYPOINT ["dnsmasq", "-k", "-C", "/etc/dnsmasq.conf"]
CMD ["--log-facility=-"]
