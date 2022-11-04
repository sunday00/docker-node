FROM node:14.20.0-alpine

RUN mkdir /var/www/html -p
WORKDIR /var/www/html
ENV PATH /var/www/html/node_modules/.bin:$PATH
COPY src /var/www/html

RUN npm install --no-cache
RUN npm install -g yarn --force
RUN yarn build

EXPOSE 4000

CMD ["node", "server/index.js"]