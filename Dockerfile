# dockerize a node app
FROM node:latest

# create an app directory
WORKDIR /usr/src/app

# install app dependencies
COPY package*.json ./

# install npm dependencies
RUN npm install

# Bundle the rest of the app dependencies sources
COPY . .

# Expose open port 3000
EXPOSE 3000

# Run the app
CMD [ "node", "index.js" ]