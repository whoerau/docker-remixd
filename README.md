# Remixd-docker

## The Dockerfile allows one to build an image that runs remixd.

- After building the image using: 
`$ docker build . --tag mnxzyw/remixd`,
- the container can be started as follows: 
`$ docker run -itd -v/path/to/your/solidity/files/:/app -p65520:65520 mnxzyw/remixd`
- docker-compose.yml
  ```
  export FILE_PATH=you_file_path
  ```
  ```
  version: '3'
  services:
    remixd:
      image: mnxzyw/remixd
      container_name: remixd
      volumes:
        - ${FILE_PATH}:/app
      ports:
        - "65520:65520"
      restart: unless-stopped
  ```
- only http://remix.ethereum.org can be connected ("http" no ssl)
  
  When the container is successfully started, it can be used to make files from the local file system available
in the remix IDE (http://remix.ethereum.org).
