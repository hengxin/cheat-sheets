# Docker Environment Cheat Sheets

## Install Docker

### Linux

Run [the script](https://get.docker.com/) via `curl -sSL https://get.docker.com/ | sh` or `wget -qO- https://get.docker.com/ | sh`.

### MacOS

There are 2 ways to install Docker on macOS. Using [Docker Desktop on Mac](https://hub.docker.com/?overlay=onboarding) or [Docker Toolbox](https://docs.docker.com/toolbox/overview/). You can read more about Docker Desktop for Mac vs. Docker Toolbox [here](https://docs.docker.com/docker-for-mac/docker-toolbox/). In short, Docker Desktop for Mac uses **HyperKit**, when Docker Toolbox uses Virtual Box for create a Linux machine. Docker Desktop for Mac is much recommended.

### Windows

Docker Desktop for Windows is the Community version of Docker for Microsoft Windows. You can download and install it from [Docker Hub](https://hub.docker.com/?overlay=onboarding)

## Check the current version

There are some commands you can use to check the version of Docker you are currently running.

```
// Long information 
$ docker version

// Short information 
$ docker --version
```

## Fundamentals of Docker Container Management

There are some commands you can use to work with Docker.

```
$ docker container ls (shows running containers).

$ docker container ls -a (shows all containers, running, dead, stopped).

$ docker container run -ti hello-world (runs a hello-world image with interactivity and connected using the -ti option).

$ $ docker container attach (connects to the container).
```

