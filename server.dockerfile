FROM node:14.20.0-alpine

RUN mkdir /var/www/html -p
WORKDIR /var/www/html
ENV PATH /var/www/html/node_modules/.bin:$PATH
COPY src/package.json /var/www/html/package.json

RUN npm install --no-cache
RUN npm install -- -g yarn

COPY src /var/www/html

RUN yarn build

CMD ["node", "server/index.js"]