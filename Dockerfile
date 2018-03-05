FROM node:alpine

LABEL maintainer="Matías Aguirre <matiasaguirre@gmail.com>"

ARG DEFAULT_SIMPLESS_CONF="./simpless.conf.js"
ARG DEFAULT_SIMPLESS_WATCH=""
ARG DEFAULT_SIMPLESS_TARGET=""

ENV SIMPLESS_CONF=$DEFAULT_SIMPLESS_CONF
ENV SIMPLESS_WATCH=$DEFAULT_SIMPLESS_WATCH
ENV SIMPLESS_TARGET=$DEFAULT_SIMPLESS_TARGET

RUN yarn global add less simpless

ADD ./entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
