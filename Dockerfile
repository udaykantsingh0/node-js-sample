FROM node:18-alpine

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . .

RUN /bin/sh -c apt-get update && apt-get install -y nginx

# RUN rm /etc/nginx/sites-enabled/default

# COPY nginx.conf /etc/nginx/sites-enabled/

EXPOSE 80
EXPOSE 5000

CMD service nginx start && npm start