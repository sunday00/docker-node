FROM node:14.20.0-alpine

RUN mkdir /var/www/html/server -p
WORKDIR /var/www/html/server
ENV PATH /var/www/html/server/node_modules/.bin:$PATH
COPY src /var/www/html/server

RUN npm install --no-cache
RUN npm install -g yarn --force
RUN yarn build

EXPOSE 4000

CMD ["node", "server"]