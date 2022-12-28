#FROM node:latest
#WORKDIR /usr/src/app
#COPY nodeapp/* /
#RUN npm install
#EXPOSE 3000
#CMD [ "npm","start" ]
FROM ubuntu 
MAINTAINER sharath@gmail.com 

RUN apt-get update 
RUN apt-get install –y nginx 
EXPOSE 80
CMD [“echo”,”Image created”]
