FROM node:22-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json* ./
RUN npm install --omit=dev

COPY . .

ENV PORT=8080 \
    TORRENTIO_BASE=https://jacred.stream/

EXPOSE 8080

CMD ["node", "server.js"]
