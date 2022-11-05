FROM nginx:stable-alpine

RUN mkdir -p /var/www/html
COPY ./resources /var/www/html
WORKDIR /var/www/html

RUN apk add nodejs && apk add npm \
    && npm install --no-cache \
    && npm install -g yarn --force \
    && yarn build