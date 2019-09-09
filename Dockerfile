FROM node:7-stretch

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y git python \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN npm install -g remixd
RUN sed -i s/127.0.0.1/0.0.0.0/g /usr/local/lib/node_modules/remixd/src/websocket.js

EXPOSE 65520

ENTRYPOINT ["/usr/local/bin/remixd", "-s", "/app", "--remix-ide", "http://remix.ethereum.org"]
