# using this version of Node: `node:14-alpine` as work around for issue: 
# Error: EACCES: permission denied, open '/app/logs/access.log'
# Emitted 'error' event on WriteStream instance at:
#     at emitErrorNT (node:internal/streams/destroy:157:8)
#     at emitErrorCloseNT (node:internal/streams/destroy:122:3)
#     at processTicksAndRejections (node:internal/process/task_queues:83:21) {
#   errno: -13,
#   code: 'EACCES',
#   syscall: 'open',
#   path: '/app/logs/access.log'
# }

# OR.. create folder first and then alter permissions as part of the docker commands as below..
FROM node

USER node

WORKDIR /app

RUN mkdir /app/logs

COPY package.json .

RUN npm install

COPY . .

RUN chown -R node:node /app/logs  && chmod 777 /app/logs

EXPOSE 2888

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

CMD ["npm", "start"]