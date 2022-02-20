#Specify a base image
FROM node:alpine

#Working directory where the node app is installed
WORKDIR /usr/app

#The following ensures that if the image is built, from second time onwards, RUN npm install will only run if package.json step is changed
COPY ./package.json ./

RUN npm install

COPY ./ ./

#Startup command
CMD ["npm", "start"]