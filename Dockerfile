# Use an existing docker image as a base
FROM node:alpine

WORKDIR /usr/app


# download and install a dependency
# first COPY will be cache
COPY ./package.json ./
RUN npm install
COPY ./ ./

#tell the image what to do when it starts as a container
CMD ["npm", "start"]