FROM owlab/alpine-arm64:edge
MAINTAINER Hun Jae Lee <hunjae.lee@gmail.com>

RUN apk --update add --no-cache --virtual build-deps gcc make musl-dev openssl  \
    && wget -O- https://github.com/JayH5/su-exec/archive/v0.2.tar.gz | tar zxvf - \
    && cd su-exec-0.2 \
    && make \
    && mv su-exec /usr/local/bin \
    && cd .. && rm -rf su-exec-0.2 \
    && apk del build-deps
