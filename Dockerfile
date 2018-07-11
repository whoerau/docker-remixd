FROM ubuntu:18.10

USER root

RUN apt-get update && apt-get install -y npm git python

RUN npm install -g remixd

EXPOSE 65520

ENTRYPOINT ["/usr/local/bin/remixd", "-s", "/app"]
