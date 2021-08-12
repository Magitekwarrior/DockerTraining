FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 2999

CMD ["node", "app.js"]

# Containerise mongo db with persistent storage/ volume
# docker run -d --rm -p 27017:27017 --name mongodb -v "$(pwd):/db" mongo

# docker run --name favourites -d --rm -p 2999:3000 favourites:node