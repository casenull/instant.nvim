# syntax=docker/dockerfile:1
FROM node:19.8.1-alpine3.16
WORKDIR /server
COPY ./server .
ENV NODE_ENV=production
RUN npm install
USER node:node
EXPOSE 8080
ENTRYPOINT ["node", "ws_server.js"]
