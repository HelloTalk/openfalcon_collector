FROM alpine:latest
RUN apk add --no-cache \
        libc6-compat
COPY openfalcon_collector /usr/bin/

CMD ["openfalcon_collector", "-c", "/etc/openfalcon_collector.conf"]
