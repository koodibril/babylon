FROM node:latest
WORKDIR /usr/src/app
COPY package*.json ./
COPY public ./
COPY server.js ./
RUN npm install
EXPOSE 80
CMD [ "node", "server.js" ]