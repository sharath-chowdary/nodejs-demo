#FROM node:latest
#WORKDIR /usr/src/app
#COPY nodeapp/* /
#RUN npm install
#EXPOSE 3000
#CMD [ "npm","start" ]
# Pull base image
FROM ubuntu:latest

# Dockerfile Maintainer
MAINTAINER sharath "sharath30@gmail.com"
WORKDIR /usr/src/app
# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install --no-install-recommends -y nginx; \
 echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]
