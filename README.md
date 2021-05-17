# Docker
* Open source containerisation platform which can communicate with any OS
* Shares resources of OS, rather than holding on to them
* Containerises apps for fast and consistent delivery
* Separates applications from their infrastructure

## Why do we use docker?
* Can deploy across multiple systems
* Efficient
* Compatible with most industry tools
* Simple to use

## VMs vs Docker
* Docker is much more lightweight (takes up less memory, resources)
* Start-up time is much faster
* Can integrate with other tools
* Runs on the OS' kernel, rather than virtualising another one
* Runs on the host machine, so images are smaller and more efficient 

## Docker Installation and setup
* Follow the steps for your [operating system here](https://docs.docker.com/desktop/)

## Docker Hub account and repository
* A Docker repository allows one to store Docker images
* Can be shared with their team, customers or the Docker community
* Version control for images
* One must create a Docker Hub account to utilise this

**Creating a Docker repository:**
* `docker login` - log into your Docker account
* `docker tag nginx:latest kingbigw/eng84_william_nginx` - created an image from an Nginx container
* `docker push kingbigw/eng84_william_nginx` - push the image

**Committing and pushing changes:**
* `docker commit container_id kingbigw/eng84_william_nginx` - changes it locally
* `docker push kingbigw/eng84_william_nginx:latest` - push to make the changes remotely

## Docker Containers and images
* **Images** - a read-only template with instructions for creating a Docker container
* **Containers** - an isolated, runnable instance of an image

## Building customised images
To build a customised image, one can either:
* Create a Dockerfile to build an image with customised configurations
* Modify an existing image to suit their needs and pass it off as their own (follow steps to create a Docker repo)

## Microservices
Microservices are a method of developing software systems that focuses on building single-function modules with well-defines interfaces and operations. It aims to be modular as possible and stopping them shouldn't affect the work flow (being loosely coupled).

## Docker commands
* `docker --version` - check the version
* `docker run image_name` - run an image (by creating a container from it)
* `docker images` - show all images installed
* `docker pull name_of_image` - install an image
* `docker rmi name_of_image` - to remove an image
* `docker rmi name_of_image -f` - to force remove an image (if a container is running for that image)
* `docker ps` - to check running containers 
* `docker ps -a` - to check all running containers' history
* `docker rm container_id` - to remove a container
* `docker rm container_id -f` - to force remove a container
* `docker stop container_id` - stop a container from running
* `docker start container_id` - start a container (that was stopped)

**Run a container that runs on a port:**
* `docker run -d -p 2368:2368 ghost` - run ghost on detached mode, on port 2368
* `docker run -d -p 88:80 nginx` - run Nginx from port 88 (localhost) and port 80 in the container

**SSH into a Container:**
* `alias docker="winpty docker"` - needs to be done the first time
* `docker exec -it container_id sh` - SSH into container

**Copying a file from the host machine into a container:**
* `docker cp index.html container_id:usr/share/nginx/html/index.html` - copying `index.html` to the Nginx container
* `docker cp file container_id:file_loc_in_container` - copying a file to a container

**Web page is stored in (Nginx):**
* `cd usr/share/nginx/html/`
* It's `index.html`

# Kubernetes (K8)
* Containerisation orchestration tool used for automating the deployment, scaling and management for containerised applications
* Adopted by all cloud providers 
* Kubernetes manages containers for over 70% of companies

## Advantages of Kubernetes 
* It is *self healing*
* Includes Load Balancing and service delivery 
* Automated rollouts and rollback
* Auto Scaling 
* Automatic bin packing
* Storage orchestration
* Widely available