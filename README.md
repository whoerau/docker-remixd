Remixd-docker

The Dockerfile allows one to build an image that runs remixd.

After building the image using: `$ docker build . --tag 4c0n/remixd`,
the container can be started as follows: `$ docker run -itd -v/path/to/your/solidity/files/:/app -p65520:65520 4c0n/remixd`

When the container is successfully started, it can be used to make files from the local file system available
in the remix IDE (https://remix.ethereum.org).
