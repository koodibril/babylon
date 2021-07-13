FROM node:latest
RUN mkdir /usr/src/app
COPY package.json /usr/src/app
COPY public /usr/src/app
COPY server.js /usr/src/app
WORKDIR /usr/src/app
RUN npm install
CMD node server.js