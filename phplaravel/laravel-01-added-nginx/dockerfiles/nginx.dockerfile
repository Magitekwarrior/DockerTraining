FROM nginx:stable-alpine

# where nginx config resides - see nginx configuration online.
WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

#renaming nginx config from project to what nginx expects in container.

RUN mv nginx.conf default.conf 

# Where app resides
WORKDIR /var/www/html

COPY src .
