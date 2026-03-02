FROM node:24-alpine

WORKDIR /app

RUN corepack enable

COPY package.json ./

RUN npm install

COPY . .

CMD ["sh", "-c", "PORT=$PORT HOST=0.0.0.0 pnpm exec y-websocket"]