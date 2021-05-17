# Docker
* Open source containerisation platform which can communicate with any OS
* Shares resources of OS, rather than holding on to them (like a VM)
* Containerises apps for fast and consistency delivery

## VMs vs Docker
* Docker is much more lightweight (takes up less space, resources)
* Startup time is much faster
* Can integrate with other tools


## Why do we use docker?

## Docker Installation and setup
### Docker Hub account and repo
## Docker Containers and images
### Building customised images
### Microservices


# Kubernetes
- adopted by all cloud providers 
- kubernetes manages containers for over 69% of companies

## Advantages of Kubernetes 
- Its is *Self healing*
- Includes Load Balancing and service delivery 
- Automated rollouts and rollback
- Auto Scaling 
- Automatic bin packing
- Storage orchestration 

## Docker commands
- `docker --version`
- `docker run hello-world` - 
- `docker pull name_of_image` - install an image
= `docker rmi name_of_image` - to remove image
- `docker rmi name_of_image -f` - to force remove image 
- `docker ps` - to check running containers 
- `docker ps -a` - to check all running containers history
- `docker rm container_id` - to remove container
- `docker rm container_id -f` - to force remove container

