FROM node:18-slim

EXPOSE 3000

ARG MONGODB_URI 

COPY . /app
WORKDIR /app

RUN npm install && npm run build

CMD npm run start