FROM alpine:3.16

RUN apk add -U bash git dos2unix

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN dos2unix /entrypoint.sh && chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
