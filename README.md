# Docker image: Ansible

[![Docker Hub](https://img.shields.io/badge/docker-ansible-blue.svg)](https://hub.docker.com/r/chusiang/ansible/)

A Docker image for run the [Ansible][ansible_official] v2.3.1.

[ansible_official]:  https://www.ansible.com/

## Supported tags and respective `Dockerfile` links

- `alpine-3.6`, `latest` [*(Dockerfile)*][dockerfile_alpine-3.6]

[dockerfile_alpine-3.6]: alpine-3.6/Dockerfile



## Build image

1. Get this project.

    ```
    $ git clone https://github.com/chusiang/ansible.dockerfile.git
    ```

1. Go to workspace.

    ```
    $ cd ansible.dockerfile/alpine-3.6
    ```

1. Bunild the image.

    ```
    $ docker build -t ansible .
    $ docker build -t ansible:alpine-3.6 .
    ```

## Run container

1. Get image.

    ```
    $ docker pull chusiang/ansible
    ```

1. Run the container.

    ```
    $ docker run --name ansible -it chusiang/ansible sh
    ```

1. Check container process.

    ```
    $ docker ps
    ```

1. Enter container with command line.

    ```
    $ docker exec -it ansible bash
    ```

Enjoy it !

## License

MIT license from 2017.

## Author Information

1. [Chu-Siang Lai](https://github.com/chusiang/)