FROM node

WORKDIR /app
# COPY . => Denotes copying all files (and subfolders) in your project
# COPY . . => The second dot would normally mean copy to the root of the container BUT, with WORKDIR set, it will copy there
COPY . /app

RUN npm install

# this indicates which port on the container should be exposed.
EXPOSE 8080

# CMD will only run when the container is started based on the image
CMD ["node", "server.js"]