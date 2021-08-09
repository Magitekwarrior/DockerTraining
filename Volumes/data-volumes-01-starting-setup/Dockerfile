FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 2999

CMD ["node", "server.js"]


# docker run -d -p 2999:2999 --rm --name feedback-app -v feedbackvol:/app/feedback feedbackapp:image
# above adds a named volume that survives a container being stopped/removed.