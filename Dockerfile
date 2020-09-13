FROM node:current-alpine3.12

WORKDIR /app/

COPY package.json /app/package.json

RUN apk add bash \
 && npm install

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
