# Docker image: Ansible

[![OS](https://img.shields.io/badge/os-alpine-blue.svg)](https://hub.docker.com/_/alpine/) [![Docker Hub](https://img.shields.io/badge/docker-ansible-blue.svg)](https://hub.docker.com/r/chusiang/ansible/) [![version](https://images.microbadger.com/badges/version/chusiang/ansible.svg)](https://microbadger.com/images/chusiang/ansible "Get your own version badge on microbadger.com") [![Download Size](https://images.microbadger.com/badges/image/chusiang/ansible.svg)](https://microbadger.com/images/chusiang/ansible "Get your own image badge on microbadger.com")

A Docker image for run the [Ansible][ansible_official] Engine on Alpine Linux.

[ansible_official]:  https://www.ansible.com/

## Supported tags and respective `Dockerfile` links

- `2.3`, [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.3/Dockerfile)
- `2.4`, `latest` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.4/Dockerfile)

## Build image

1. Get this project.

    ```
    $ git clone https://github.com/chusiang/ansible.dockerfile.git
    ```

1. Go to workspace.

    ```
    $ cd ansible.dockerfile/<REVERSION>
    ```

1. Bunild the image.

    ```
    $ docker build -t ansible .
    $ docker build -t ansible:<REVERSION> .
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

## History

### 2018

* 01/10: Refactor the architecture. Add v2.4 image and add the `ansible-lint` package.

## License

MIT license from 2017-2018.

## Author Information

1. [Chu-Siang Lai](https://github.com/chusiang/)
