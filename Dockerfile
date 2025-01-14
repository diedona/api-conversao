FROM node:14.16.1-alpine3.13
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4545
CMD ["node", "index.js"]