FROM node:gallium-alpine

RUN apk add --no-cache \
 bash \
 php \
 composer \
 curl \
 git \
 openssh

RUN mkdir -p /app && chown -R node /app
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
