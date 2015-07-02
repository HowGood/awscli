FROM alpine:latest

RUN apk --update-cache --upgrade add groff less python py-pip && \
    pip install --no-cache-dir awscli && \
    apk --purge del py-pip && \
    rm /var/cache/apk/*

ENTRYPOINT ["/usr/bin/aws"]
