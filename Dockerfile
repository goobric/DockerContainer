# dockerize a node app
FROM node:latest

# create an app directory
WORKDIR /usr/src/app

# install app dependencies
COPY package*.json ./

# install npm dependencies
RUN npm install