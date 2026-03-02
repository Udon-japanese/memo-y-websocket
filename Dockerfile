FROM node:24-alpine

WORKDIR /app

RUN corepack enable

COPY package.json ./

RUN npm install

COPY . .

ENV PORT=1234

EXPOSE 1234

CMD ["sh", "-c", "pnpm exec y-websocket --port $PORT"]