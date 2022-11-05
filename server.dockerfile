FROM node:14.20.0-alpine

RUN mkdir -p /app
COPY ./resources /app/resources
WORKDIR /app/resources
ENV PATH /app/resources/node_modules/.bin:$PATH

RUN npm install --no-cache

CMD ["node", "/app/resources/server/index.js"]