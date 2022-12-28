#FROM node:latest
#WORKDIR /usr/src/app
#COPY nodeapp/* /
#RUN npm install
#EXPOSE 3000
#CMD [ "npm","start" ]
# base image: centos7
FROM ubuntu:latest

# install dependencies to compile redis source code
RUN ["yum" , "install" , "-y" ,"gcc","gcc-c++","net-tools","make"]

# set workdir to /usr/local
WORKDIR /usr/local

# copy a file to workdir
ADD redis-5.0.10.tar.gz .

# reset workdir to compile redis
WORKDIR /usr/local/redis-5.0.10/src

# install redis
RUN make && make install

# reset dir where redis is installed
WORKDIR /usr/local/redis-5.0.10

# expose a port
EXPOSE 6379

# run redis after container starts
CMD ["redis-server"]
