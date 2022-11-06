# Base image
FROM node:18

RUN apt update
RUN apt upgrade -y
RUN apt install xsel

# Create app directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

expose 8080

CMD [ "bash", "entry.sh"]