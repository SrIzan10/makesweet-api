FROM node:latest

WORKDIR /app

RUN apt update;apt install wkhtmltopdf curl -y

COPY package.json ./

RUN npm install

COPY . .

CMD node src/index.js