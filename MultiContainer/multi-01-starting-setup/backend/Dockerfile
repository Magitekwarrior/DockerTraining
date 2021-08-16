FROM node

WORKDIR /app

ENV DOCKER_BUILDKIT = 1

COPY package.json .

RUN npm install

COPY . .

EXPOSE 2999

CMD ["node", "app.js"]


# docker create network goals-net

# Containerise mongo db with persistent storage/ named volume
# docker run -d --rm --network goals-net -p 27017:27017 --name mongodb-c -v data:/data/db mongo
# NOTE: `-e MONGO_INITDB_ROOT_USERNAME=admUser -e MONGO_INITDB_ROOT_PASSWORD=secret` - can be added to secure db. 
  # Just remember to change connection string in code to reflect this. OR (MORE SECURE) - use docker environment Variables.

# docker build -t goalsbackend:image .

# Containerize backend to allow local editing with persistence:
  # App folder (workdir), bind mount to local machine so files can be edited inside container.
  # (logs - named volume) - so we can access it later (even if container is brought down)
  # (nodes_module - anonymous volume - we don't want container mods to be overwritten by local)
  # port exposed to we can access locally
  # networked so it can talk to other containers in same network
  # and detached mode and container will remove itself once brought down.
# docker run --name goals-backend -v "/Users/abhana/Developer/DockerTraining/MultiContainer/multi-01-starting-setup/backend:/app" -v logs: /app/logs -v /app/nodes_module --rm p 2999:2999 --network goals-net goalsbackend:image

#FYI - Nodemon would need to be devDependency for this back-end app if you want code changes to be reflected inside container, since 'node app.js' doesn't just serve changes to code.
# nodemon watches changes.

# REACT App Container should be run in --it (interactive mode)
