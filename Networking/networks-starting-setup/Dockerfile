FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]

# docker run --name favourites -d --rm -p 2999:3000 favourites:node