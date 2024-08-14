FROM node:18-slim

WORKDIR /github/workspace

COPY package.json package-lock.json ./
RUN npm ci

COPY . .

ENTRYPOINT ["node", "index.js"]