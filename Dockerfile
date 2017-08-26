FROM resin/rpi-raspbian

MAINTAINER Bruno Cardoso Cantisano <bruno.cantisano@gmail.com>

LABEL version latest
LABEL description NodeJs container for Raspberry Pi

RUN apt-get clean \
    && apt-get update \
    && curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
    && apt-get install -y nodejs \
    && mkdir -p /nodejs_apps \
    && echo "NodeJs successfully installed!" 

COPY files/hello_node.js /nodejs_apps

WORKDIR /nodejs_apps

VOLUME /nodejs_apps

EXPOSE 8080

CMD ["node","hello_node.js"]
