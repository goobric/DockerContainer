# Docker Course by Francesco Ciulla

## [Docker Tutorial](https://www.youtube.com/watch?v=i9M2YBSKp4M)

## What is Docker?

- Docker is a platform, for both Developers and Sysadmins, to Build, Run, Ship

## Docker Hub

- Docker Hub is the world's largest library and community for container images. Browse over 100,000 container images from software vendors, open-source projects, and the community.

- [Docker Central Hub](https://hub.docker.com)

## Docker Personal

- Docker Personal is a great place to start for personal use, education, open source, small business, and startups.
- [Docker Personal](https://docker.com/products/personal)

### What is a Container?

- from a logical point of view, it is a Single and Packaged unit of software
- from a technical point of view, it is an isolated Linux Process

#### Container or Image?

- Image: is like a Class (blueprint) in object oriented programming
- Container: is like an instance of that class

### Docker Volumes (storage)

- managed by Docker
- Ideal for persistent data
- Container-lifecycle

### Why Containers?

- Another advantage of using containerization is the possibility of using different versions of an application for different projects at the same time (without even installing them)!
- Let's say we want to use Postgres v10 for one project but we need to use Postgres v9 for another project. And Postgres v12 is already installed.
- one solution: use all 3 of them, changing ports every time depending on the project you are working on, is a real pain.
- another solution: we would like to have separated developer environments for the two projects; without configuring ad-hoc machines.

### Containers vs Virtual Machine

- a VM runs a full-blown operating system, with virtual access to host resources through a hypervisor. A VM usually has a lot of overhead beyond what is being consumed by the application.
- A Container runs natively on Linux. It runs in a process, taking only the necessary memory needed, making it more lightweight and resource efficient. It shares the kernel of the host machine with other containers.

### Docker Architecture

- it uses a **client-server** architecture.
- the client talks to the daemon (server), which manages Docker objects:
  - Images
  - Containers
  - Networks
  - Volumes
- the Docker **client** and the **daemon** can run on the same system, or they can be connected remotely using HTTP protocol.
- the connection is established using **REST APIs** over **_UNIX_** sockets/network interface

### Docker Client

- the main way of interacting with Docker
- when you use commands such as `docker run` the client sends these commands to **_dockered_** which carries out the commands
- the docker command uses the **Docker API**. One client can communicate with multiple daemons.

### Docker Images

- They are **read-only** templates, that contain instructions and metadata for creating Docker containers.
- You can:
  - use existing images
  - create your own custom image, starting from an exiting one
  - start a new image from scratch
- Images can be created by defining a **Dockerfile** a text file containing commands used to create the image, one layer per line of instruction.
- Docker uses the system of **_caching_** : a new layer is built only if it is changed.

### Docker Containers

- Runnable instances of an image
- Multiple containers can be instantiated from the same Image
- Containers can be created / started / stopped / deleted / using the Docker API/CLI
- They are isolated form other containers and the host machine, by using **_namespaces_** (Linux feature)
- The **Image** contains:
  - dependencies
  - configuration
  - binaries
  - environment variables
  - other data, container-related
- A **Container** has its own dedicated filesystem, provided by the image
- many containers can be run from a single image, with different options.

### Docker Networks (5 types)

- **BRIDGE** (default): allows connected containers on the same network to communicate, and it provides isolation from containers that are not connected to the bridge network.
- **HOST** : removes network isolation between the Container and Host machine
- **OVERLAY** : connects Docker daemons over the web. Enables swarm services.
- **MACVLAN** : Assigns a **_MAC_** address, used by the Docker daemon to access it. Useful for legacy applications.
- **NONE** : Disable networking
- in the terminal type `docker version` for a print-out to the screen of the docker application
- in the terminal type `docker info` for a print-out to the screen of the information
- here are some useful commands:
  - `docker ps`
  - `docker ps -a`
  - `docker images`
  - `docker network ls`
  - `docker volume ls`
- **PROCESSES** in Docker are automatically terminated when a Container has finished running.
  - once a file has downloaded the **process** has finished
  - once a file has been moved to a different location, the **process** has finished. Exited.

### Docker Components

- Dockerfile
- .dockerignore
- Build
  - docker build -t nodeapp (name)
