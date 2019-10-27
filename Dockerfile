FROM alpine:3.10

RUN apk add -U git

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
