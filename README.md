# NodeJs

![docker_logo](https://raw.githubusercontent.com/brunocantisano/rpi-node/master/files/docker.png)![docker_nodejs_logo](https://raw.githubusercontent.com/brunocantisano/rpi-node/master/files/logo-nodejs.png)![docker_paperinik_logo](https://raw.githubusercontent.com/brunocantisano/rpi-node/master/files/docker_paperinik_120x120.png)

This Docker container implements a Nodejs Server.

 * Raspbian base image.
 
### Installation from [Docker registry hub](https://registry.hub.docker.com/u/paperinik/rpi-node/).

You can download the image with the following command:

```bash
docker pull paperinik/rpi-node
```

# How to use this image

Exposed ports and volumes
----

The image exposes port `3000`. Also, exports one volume: `/nodejs_apps`, which contains node apps, used to store all the apps.

Use cases

----

1) If you'd like to run example app, hello_node.js:

```bash
docker run --name nodejs -it -p 9416:3000 paperinik/rpi-node
```

----

2) If you'd like to be able to install all dependencies in your node path:

```bash
docker run -it -p 9416:3000 \
           -v /media/usbraid/docker/node:/nodejs_apps \ 
           paperinik/rpi-node npm install
```

----

3) If you'd like to run a customized node app:

```bash
docker run --name nodejs -it -p 9416:3000 \
           -v /media/usbraid/docker/node:/nodejs_apps \
           paperinik/rpi-node node test_node.js
```

----

4) If you'd like to be able to access the customized app and run as daemon:

```bash
docker run --name nodejs -d -p 9416:3000 \
           -v /media/usbraid/docker/node:/nodejs_apps \
           paperinik/rpi-node node test_node.js
```