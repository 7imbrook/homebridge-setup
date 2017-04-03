Homebridge in docker
====================

Running needs to bind to host, otherwise Bojour doesn't work
```
docker run --name homebridge -d --net=host -p 51826:51826 7imbrook/homebridge:latest
```
