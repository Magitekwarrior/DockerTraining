FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 2999

# Anonymous volume - managed by docker - on your local machine but you won't see where
VOLUME ["/app/feedback"] 

CMD ["node", "server.js"]