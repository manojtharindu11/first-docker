# base image
FROM node:20-alpine

# working directory
WORKDIR /app

COPY package.json .

RUN npm install

# copy the files
COPY . .

# run the app
CMD [ "npm", "start" ]
