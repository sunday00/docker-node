FROM node:14.20.0-alpine

RUN mkdir /app
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY resources/ /app/

RUN npm install --no-cache
RUN npm install -g yarn --force
RUN yarn build

EXPOSE 4000

CMD ["node", "server/index.js"]