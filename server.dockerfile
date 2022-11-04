FROM node:14.20.0-alpine

WORKDIR /var/www/html
ENV PATH /var/www/html/node_modules/.bin:$PATH

RUN npm install --no-cache

CMD ["node", "server/index.js"]