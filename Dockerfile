FROM ubuntu:16.04

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs build-essential python libavahi-compat-libdnssd-dev avahi-daemon avahi-discover libnss-mdns libavahi-compat-libdnssd-dev

RUN npm install -g --unsafe-perm homebridge
RUN npm install -g homebridge-wemo

RUN mkdir /root/.homebridge
COPY ./config.json /root/.homebridge/

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
