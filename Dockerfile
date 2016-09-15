FROM mhart/alpine-node:4.5.0

RUN apk add --no-cache --virtual .build-deps \
      git \
      python \
      gcc \
      avahi-compat-libdns_sd \
    && npm config set strict-ssl false \
    && npm config set registry http://registry.npmjs.org \
    && npm install --unsafe-perm -g homebridge-vera \
    && apk del .build-deps


