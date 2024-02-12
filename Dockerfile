FROM alpine:3.19

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . .        

EXPOSE 5000

CMD ["npm", "start", "/app"]