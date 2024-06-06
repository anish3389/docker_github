FROM node:20-alpine3.19

WORKDIR /app

COPY "backend/code/package.json" .
RUN npm install
COPY "backend/code/index.js" .

ENTRYPOINT ["node"]
cmd ["index.js"]