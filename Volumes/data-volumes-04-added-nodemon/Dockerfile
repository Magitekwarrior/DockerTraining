FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# VOLUME [ "/app/node_modules" ]

CMD [ "npm", "start" ]

# Container: 
# docker run -d --rm -p 3999:8000 --env PORT=8000 --name feedback-app -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules -v /app/temp feedbackenv:image

# docker run -d --rm -p 3999:9000 --env-file ./.env --name feedback-app -v feedback:/app/feedback -v "$(pwd):/app" -v /app/node_modules -v /app/temp feedbackenv:image