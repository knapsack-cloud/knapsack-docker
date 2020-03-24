# https://hub.docker.com/_/alpine/
# erbium is node 12 LTS
# https://hub.docker.com/layers/node/library/node/erbium-alpine3.9/images/sha256-f387372177b28a95fec6cf968ce285f8c1b7250dfd6b25ecc798082d8dc0ae2a?context=explore
FROM node:erbium-alpine3.10
RUN apk add --no-cache \
  bash \
  php \
  composer \
  curl \
  git \
  openssh \
&& php --version && composer --version && node --version && yarn --version && npm --version

CMD ["/bin/bash"]
