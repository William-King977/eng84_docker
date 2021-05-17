# Docker
* Open source containerisation platform which can communicate with any OS
* Shares resources of OS, rather than holding on to them (like a VM)
* Containerises apps for fast and consistency delivery

## Why do we use docker?

## VMs vs Docker
* Docker is much more lightweight (takes up less space, resources)
* Start-up time is much faster
* Can integrate with other tools

## Docker Installation and setup
## Docker Hub account and repository
Creating a Docker repository:
* `docker login` - log into your Docker account
* `docker tag nginx:latest kingbigw/eng84_william_nginx` - created an image from a container
* `docker push kingbigw/eng84_william_nginx` - push the image

Committing and pushing changes:
* `docker commit container_id kingbigw/eng84_william_nginx` - changes it locally
* `docker push kingbigw/eng84_william_nginx:latest` - push to make the changes remotely

## Docker Containers and images
## Building customised images
## Microservices

## Docker commands
* `docker --version` - check the version
* `docker run hello-world` - run the `hello-world` image
* `docker images` - show all images installed
* `docker pull name_of_image` - install an image
* `docker rmi name_of_image` - to remove an image
* `docker rmi name_of_image -f` - to force remove image (if a container is running for that image)
* `docker ps` - to check running containers 
* `docker ps -a` - to check all running containers' history
* `docker rm container_id` - to remove a container
* `docker rm container_id -f` - to force remove a container
* `docker stop container_id` - stop a container from running
* `docker start container_id` - start a container (that was stopped)

Run a container that runs in a port:
* `docker run -d -p 2368:2368 ghost` - run ghost on detached mode, on port 2368
* `docker run -d -p 88:80 nginx` - run Nginx from port 88 (localhost) and port 80 in container

SSH into a Container
* `alias docker="winpty docker"` - needs to be done the first time
* `docker exec -it container_id sh` - SSH into container

Web page is stored in (Nginx):
* `cd usr/share/nginx/html/`
* It's `index.html`

Copying a file from the host machine into a container:
* `docker cp index.html container_id:usr/share/nginx/html/index.html` - copying `index.html` to the Nginx container
* `docker cp file container_id:file_loc_in_container` - copying a file to a container

# Kubernetes
* Adopted by all cloud providers 
* Kubernetes manages containers for over 69% of companies

## Advantages of Kubernetes 
* It is *self healing*
* Includes Load Balancing and service delivery 
* Automated rollouts and rollback
* Auto Scaling 
* Automatic bin packing
* Storage orchestration 