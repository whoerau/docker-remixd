FROM ubuntu:18.10

USER root

RUN apt-get update && apt-get install -y npm git python

RUN npm install -g remixd

RUN sed -i s/127.0.0.1/0.0.0.0/g /usr/local/lib/node_modules/remixd/src/websocket.js

EXPOSE 65520

ENTRYPOINT ["/usr/local/bin/remixd", "-s", "/app"]
