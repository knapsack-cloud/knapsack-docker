FROM node:fermium-alpine3.14

RUN apk add --no-cache \
 bash \
 php \
 composer \
 curl \
 git \
 openssh \
 ca-certificates \
 openssl-dev \
 wget \
 python3 \
 build-base \
 vips-dev \
&& php --version && composer --version && node --version && yarn --version && npm --version

RUN mkdir -p /app && chown -R node /app
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
