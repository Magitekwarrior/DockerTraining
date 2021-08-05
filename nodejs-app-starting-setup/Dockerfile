FROM node

WORKDIR /app

# we try to cache the node modules so when a image is re-built, we don't d/l modules all over again.
# Remember, if we change our code, every docker instruction afterwards will re-build, while the previous ones will come from cache.
COPY package.json /app

RUN npm install

# COPY . => Denotes copying all files (and subfolders) in your project
# COPY . . => The second dot would normally mean copy to the root of the container BUT, with WORKDIR set, it will copy there
COPY . /app

# this indicates which port on the container should be exposed.
EXPOSE 8080

# CMD will only run when the container is started based on the image
CMD ["node", "server.js"]