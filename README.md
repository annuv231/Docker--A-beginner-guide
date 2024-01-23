//to check status of currrent runnning container

docker ps 

//to get list of all containers

docker ps -a 


//remove container

docker rm <container id>



##Docker Images

get list of images

docker images

remove a image

docker rmi <image id>


//pull a image from docker hub

docker pull <image name>

##Run a docker image on docker

docker run <image name>

exp : docker run ubuntu
