FROM node:18

WORKDIR /app

RUN npm install

COPY . .        

EXPOSE 5000

CMD ["npm", "start", "/app"]