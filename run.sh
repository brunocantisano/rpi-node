docker run --name nodejs -d -p 9406:3000 \
           -v /media/usbraid/docker/node:/nodejs_apps \
           paperinik/rpi-node node test_node.js