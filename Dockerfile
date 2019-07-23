FROM node

RUN mkdir /usr/src/app/node_modules/.bin:$PATH

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
