

# How to start with docker

> #### Scenario: Dockerized simple "Hello, World!" Program

#### Introduction
 This project demonstrates how to containerize a simple C++ program using Docker. By following the instructions below, you'll be able to build a Docker image and run a container that executes a basic "Hello, World!" program.

#### Prerequisites
Before you begin, ensure that you have Docker installed on your machine. You can download Docker from Docker's official website.

#### Clone this repo
```bash
git clone https://github.com/annuv231/Docker--A-beginner-guide.git
cd Docker--A-beginner-guide
```

#### Review the C++ Code:
Take a look at the hello_world.cpp file in the project directory. It contains a simple C++ program that prints "Hello, World!" to the console.
#### Build the Docker Image:
Open a terminal, navigate to the project directory, and run the following command to build the Docker image:

```bash
docker build -t cpp-hello-world .
```
This command uses the provided Dockerfile to create an image named cpp-hello-world.

#### RUN the image

To see the image details run the following command
```bash
docker images
```

To run the image

```bash
docker run -it <image-name>
```

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



# Docker Networking

Docker networking enables communication between Docker containers, between containers and the host system, and between containers across multiple hosts. Docker provides various networking options to suit different use cases. Here's an explanation of Docker networking concepts along with examples:

#### 1. Default Bridge Network:
> Concept:
The default bridge network (bridge) is created automatically when Docker is installed.
Containers connected to the bridge network can communicate with each other.
Each container gets its own IP address within the bridge network.

###### Example:
Create a container connected to the default bridge network:

```bash
docker run -d --name container1 nginx
```
#### 2. Host Network:

> Concept:
Containers use the host network (host) directly, bypassing Docker's network isolation.
Containers share the network namespace with the host system, meaning they can access ports as if they were running directly on the host.

###### Example:
Run a container using the host network:

```bash
docker run -d --name container2 --network host nginx
```
#### 3. User-defined Bridge Network:

> Concept:
User-defined bridge networks allow containers to communicate with each other while isolating them from other networks.
Containers connected to the same user-defined bridge network can communicate with each other.
Provides better security and isolation compared to the default bridge network.

###### Example:
Create a user-defined bridge network:

```bash
docker network create my-network
```
Run containers connected to the user-defined bridge network:

```bash
docker run -d --name container3 --network my-network nginx
```
#### 4. Overlay Network:

> Concept:
Overlay networks facilitate communication between containers across multiple Docker hosts (Swarm mode).
Containers in different Swarm nodes can communicate with each other seamlessly.
Provides multi-host networking for Docker Swarm services.

###### Example:
Create an overlay network:

```bash
docker network create --driver overlay my-overlay-network
```
Deploy services connected to the overlay network:

```bash
docker service create --name my-service --network my-overlay-network nginx
```
#### 5. MACVLAN Network:

> Concept:
MACVLAN allows you to assign a MAC address to a container, making it appear as a physical device on the network.
Each container has its own unique MAC address and IP address.
Useful for scenarios requiring direct access to the network.

###### Example:

Create a MACVLAN network:

```bash
docker network create -d macvlan --subnet=192.168.1.0/24 --gateway=192.168.1.1 -o parent=eth0 my-macvlan-network
```
Run containers connected to the MACVLAN network:


```bash
docker run -d --name container4 --network my-macvlan-network nginx
```
#### Summary:


Docker provides various networking options, including default bridge, host, user-defined bridge, overlay, and MACVLAN networks.
Each network type offers different features and use cases, ranging from basic container communication to multi-host networking in Docker Swarm.
Understanding Docker networking concepts helps in designing and deploying containerized applications with appropriate network configurations based on requirements.
