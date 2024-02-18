FROM node:18

WORKDIR /var/www/html

COPY package*.json /var/www/html/

RUN npm install

COPY . .

RUN apt-get update && apt-get install -y nginx

# RUN rm /etc/nginx/sites-enabled/default

# COPY nginx.conf /etc/nginx/sites-enabled/

EXPOSE 80
EXPOSE 5000

CMD service nginx start && npm start