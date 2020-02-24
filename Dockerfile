FROM alpine:latest
RUN apk add --update mongodb-tools bash ncftp openssh-client && rm -rf /var/cache/apk/* && mkdir /dump && chmod 777 /dump
COPY dump.sh /
ENTRYPOINT ["/dump.sh"]