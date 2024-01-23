

# How to start with docker

> #### Scenario: Dockerized simple "Hello, World!" Program

#### Introduction
Welcome to our Dockerized C++ "Hello, World!" example! This project demonstrates how to containerize a simple C++ program using Docker. By following the instructions below, you'll be able to build a Docker image and run a container that executes a basic "Hello, World!" program.

#### Prerequisites
Before you begin, ensure that you have Docker installed on your machine. You can download Docker from Docker's official website.

#### Clone this repo
```bash
git clone https://github.com/annuv231/Docker--A-beginner-guide.git
cd cpp-hello-world-docker
```

#### Review the C++ Code:
Take a look at the hello_world.cpp file in the project directory. It contains a simple C++ program that prints "Hello, World!" to the console.
#### Build the Docker Image:
Open a terminal, navigate to the project directory, and run the following command to build the Docker image:

```bash
docker build -t cpp-hello-world .
```
This command uses the provided Dockerfile to create an image named cpp-hello-world.


## Basic Commands

### to check status of currrent runnning container

```bash
docker ps 
```

### to get list of all containers

```bash
docker ps -a 
```

### remove container

```bash
docker rm <container id>
```



## Docker Images

### get list of images

```bash
docker images
```

### remove a image

```bash
docker rmi <image id>
```


### pull a image from docker hub 

```bash
docker pull <image name>
```

### Run a docker image on docker

```bash
docker run <image name>
```

exp : docker run ubuntu
