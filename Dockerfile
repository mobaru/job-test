FROM node:18.17.1-alpine3.18
WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 4321

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
