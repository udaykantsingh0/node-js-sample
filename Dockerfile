FROM node:18-alpine

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . .

RUN apt update && apt install -y nginx

# RUN rm /etc/nginx/sites-enabled/default

# COPY nginx.conf /etc/nginx/sites-enabled/

EXPOSE 80
EXPOSE 5000

CMD service nginx start && npm start