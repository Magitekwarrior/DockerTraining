FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 2999

# this below could be used to create anonymous volume
# VOLUME [ "app/node_modules" ]

CMD ["node", "server.js"]


# docker run -d -p 2999:2999 --rm --name feedback-app -v feedbackvol:/app/feedback feedbackapp:image
# above adds a named volume that survives a container being stopped/removed.

# BIND MOUNTS:
# docker run -d -p 2999:2999 --rm --name feedback-app -v feedbackvol:/app/feedback -v "/c/Git/DockerTraining/Volumes/data-volumes-01-starting-setup:/app" feedbackapp:image

# with Windows Shortcut
# docker run -d -p 2999:2999 --rm --name feedback-app -v feedbackvol:/app/feedback -v "%cd%":/app feedbackapp:image

# Bind Mounts - Shortcuts
#Just a quick note: If you don't always want to copy and use the full path, you can use these shortcuts:
# macOS / Linux: -v $(pwd):/app


# :ro will make volume READ ONLY to docker container ()
# BE CAREFUL TO make sure you specify volumes that container SHOULDN't write to and which ones it should.
# docker run -d -p 2999:2999 --rm --name feedback-app -v feedbackvol:/app/feedback -v "%cd%":/app:ro feedbackapp:image



# docker run -d -p 2999:2999 --rm --name feedback-app -v feedbackvol:/app/feedback -v "/mnt/c/git/dockertraining/volumes/data-volumes-01-starting-setup:/app" feedbackapp:image

# docker run -d -p 2999:2999 --name feedback-app -v feedbackvol:/app/feedback -v "/mnt/c/git/dockertraining/volumes/data-volumes-01-starting-setup:/app" -v /app/node_modules feedbackapp:image