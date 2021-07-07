FROM node:16.3.0

LABEL maintainer="Simple User Manager Docker yaml/swarm"

WORKDIR /app

COPY . .

EXPOSE 4000

RUN npm install

CMD ["npm", "start"]
