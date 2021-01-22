# https://hub.docker.com/_/alpine/
# fermium is node 14 LTS
FROM node:fermium-alpine3.10

RUN apk add --no-cache \
  bash \
  php \
  composer \
  curl \
  git \
  openssh \
&& php --version && composer --version && node --version && yarn --version && npm --version

CMD ["/bin/bash"]
