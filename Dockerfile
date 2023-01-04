FROM node:latest

WORKDIR /app

RUN apt update;apt install wkhtmltopdf curl -y

COPY ./package.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD node src/index.js