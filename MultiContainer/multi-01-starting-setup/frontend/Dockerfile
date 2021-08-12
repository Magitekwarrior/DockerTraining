FROM node

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

# Containerise mongo db with persistent storage/ volume
# docker run -d --rm -p 27017:27017 --name mongodb -v "$(pwd):/db" mongo

# docker run -it --rm -d -p 3000:3000 reactapp:image

# docker run -it --rm -v $(pwd):/app -v /app/node_modules -p 3001:3000 -e CHOKIDAR_USEPOLLING=true sample:dev