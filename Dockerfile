FROM alpine

RUN apk --no-cache add \
        libressl \
        bash

RUN apk add 'lftp>4.8.4' --updated-cache --repository http://nl.alpinelinux.org/alpine/edge/main

ADD upload.sh /bin/
RUN chmod +x /bin/upload.sh

ENTRYPOINT /bin/upload.sh
