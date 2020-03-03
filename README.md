# Docker image: Ansible

[![OS](https://img.shields.io/badge/os-alpine-blue.svg)](https://hub.docker.com/_/alpine/) [![Docker Hub](https://img.shields.io/badge/docker-ansible-blue.svg)](https://hub.docker.com/r/chusiang/ansible/) [![Download Size](https://images.microbadger.com/badges/image/chusiang/ansible.svg)](https://microbadger.com/images/chusiang/ansible "Get your own image badge on microbadger.com")

A Docker image for run the [Ansible][ansible_official] Engine on Alpine Linux.

[ansible_official]:  https://www.ansible.com/

## Supported tags and respective `Dockerfile` links

- `2.3` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.3/Dockerfile)
- `2.4` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.4/Dockerfile)
- `2.5` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.5/Dockerfile)
- `2.6` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.6/Dockerfile)
- `2.7` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.7/Dockerfile)
- `2.8` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.8/Dockerfile)
- `2.9` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.9/Dockerfile)
- `2.10`, `latest` [*(Dockerfile)*](https://github.com/chusiang/ansible.dockerfile/blob/master/v2.10/Dockerfile)

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

### 2021

* 07/09: Add `2.10` image, the Ansible v2.10.0 release at [Aug 14 2020](https://github.com/ansible/ansible/releases/tag/v2.10.0).
### 2020

* 03/03 Add `ONBUILD` rule for copy current directory to `/srv/`.

### 2019

* 12/09: Refactor "Update the CA certificates" part for fixed "wget: error getting response: Connection reset by peer" problem. [[REF]](https://github.com/Yelp/dumb-init/issues/73)
* 11/14: Add `2.9` image, the Ansible v2.9.0 release at [Oct 31 2019](https://github.com/ansible/ansible/releases/tag/v2.9.0), and add install `py-netaddr` package.
* 07/04: Add `2.8` image, the Ansible v2.8.0 release at [May 17 2019](https://github.com/ansible/ansible/releases/tag/v2.8.0), and remove install the vim.

### 2018

* 10/11: Add `2.7` image, the Ansible v2.7.0 release at [Wed Oct 3 20:26:57 2018 -0700](https://github.com/ansible/ansible/releases/tag/v2.7.0).
* 07/10: Add `2.6` image, the Ansible v2.6.0 release at [Thu Jun 28 14:38:38 2018 -0700](https://github.com/ansible/ansible/releases/tag/v2.6.0).
* 04/03: Add `2.5` image, the Ansible v2.5.0 release at [Thu Mar 22 17:09:19 2018 -0700](https://github.com/ansible/ansible/releases/tag/v2.5.0).
* 02/19: The `2.4` image has upgraded the ansible from `2.4.2` to `2.4.3`.
* 01/10: Refactor the architecture. Add `2.4` image and add the `ansible-lint` package.

## License

MIT license from 2017-2019.

## Author Information

1. [Chu-Siang Lai](https://github.com/chusiang/)
