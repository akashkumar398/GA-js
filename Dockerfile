FROM node:18-slim

WORKDIR /github/workspace

COPY package.json .
RUN npm install

COPY . .

ENTRYPOINT ["node", "index.js"]
