FROM node:24.14-alpine as Development

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . . 

EXPOSE 4321

ENTRYPOINT ["npm", "run", "dev"]
