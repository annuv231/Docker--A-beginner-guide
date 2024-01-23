#use official image from docker hub of ubuntu
FROM ubuntu:latest

# set work directory to  app directory

WORKDIR /app

#install c++ dependencies

RUN apt-get update
RUN apt-get install -y g++


#move c++ file from host directory to docker image directory

COPY . /app

#compile the c++ program

run g++ -o hello-world hello-world.cpp

#run the executable 

CMD ["./hello-world"]
