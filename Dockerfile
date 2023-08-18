FROM node:16
COPY . /app
WORKDIR /app
CMD node16 app.js
