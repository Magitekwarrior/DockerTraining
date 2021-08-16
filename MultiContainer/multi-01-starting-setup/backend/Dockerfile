FROM node

WORKDIR /app

ENV DOCKER_BUILDKIT = 1

COPY package.json .

RUN npm install

COPY . .

EXPOSE 2999

CMD ["node", "app.js"]

# Containerise mongo db with persistent storage/ volume
# docker run -d --rm -p 27017:27017 --name mongodb-c -v "$(pwd):/db" mongo

# docker create network goals-net
# docker run -d --rm --network goals-net --name mongodb mongo

# docker run --name favourites -d --rm -p 2999:3000 favourites:node