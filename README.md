# Docker image: Ansible

[![GitHub](https://img.shields.io/badge/github-chusiang/ansible.dockerfile-blue.svg)][github_repo] [![OS](https://img.shields.io/badge/os-alpine-blue.svg)][alpine_image]

A Docker image for run the [Ansible][ansible_official] Engine on Alpine Linux.

[![Docker hub](http://dockeri.co/image/chusiang/ansible?&kill_cache=1)][dockerhub_repo]

[github_repo]: https://github.com/chusiang/ansible.dockerfile
[alpine_image]: https://hub.docker.com/_/alpine/
[dockerhub_repo]: https://hub.docker.com/repository/docker/chusiang/ansible
[ansible_official]: https://www.ansible.com/

## Supported tags and respective `Dockerfile` links

- `11`, `latest` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v11/Dockerfile)
- `10` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v10/Dockerfile)
- `9` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v9/Dockerfile)
- `8` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v8/Dockerfile)
- `7` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v7/Dockerfile)
- `6` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v6/Dockerfile)
- `5` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v5/Dockerfile)
- `4` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v4/Dockerfile)
- `3` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v3/Dockerfile)
- `2.9` [_(Dockerfile)_](https://github.com/chusiang/ansible.dockerfile/blob/main/v2.9/Dockerfile)

> Note: `ansible` current version is v11.7.0 (`ansible-core` v2.18.6). Please
> see the "[Releases and maintenance | Ansible Documentation][release_and_maintenance]".

[release_and_maintenance]: https://docs.ansible.com/ansible/latest/reference_appendices/release_and_maintenance.html

## Build image

1. Get this project.

    ```console
    [ chusiang@workstation ~ ]
    $ git clone https://github.com/chusiang/ansible.dockerfile.git
    ```

1. Go to workspace.

    ```console
    [ chusiang@workstation ~ ]
    $ cd ansible.dockerfile/<REVERSION>
    ```

1. Bunild the image.

    ```console
    [ chusiang@workstation ~ ]
    $ docker build -t ansible .

    [ chusiang@workstation ~ ]
    $ docker build -t ansible:<REVERSION> .
    ```

## Run container

1. Get image.

    ```console
    [ chusiang@workstation ~ ]
    $ docker pull chusiang/ansible
    ```

1. Run container with bash shell.

    ```console
    [ chusiang@workstation ~ ]
    $ docker run --name ansible -it chusiang/ansible bash
    5e9dd71fbf02:~$
    ```

1. Enter exist container with command line.

    ```console
    [ chusiang@workstation ~ ]
    $ docker exec -it ansible bash
    5e9dd71fbf02:~$ whoami
    ansibull
    ```

    > Default not use root user after `chusiang/ansible:8` for security.

1. Check container process.

    ```console
    [ chusiang@workstation ~ ]
    $ docker ps
    ```

Enjoy it !

## History

### 2025

- 07/13 Add `11` image, the Ansible v11.0.0 release at
    [Nov 20, 2024](https://pypi.org/project/ansible/11.0.0/).
- 07/13 Add `10` image, the Ansible v10.0.1 release at
    [Jun 6, 2024](https://pypi.org/project/ansible/10.0.1/).
- 07/13 Add `9` image, the Ansible v9.0.1 release at
    [Nov 22, 2023](https://pypi.org/project/ansible/9.0.1/).
- 07/12 Add `8` image by multi-stage builds, the Ansible v8.0.0 release at
    [May 31, 2023](https://pypi.org/project/ansible/8.0.0/).

### 2022

- 11/24 Add `7` image, the Ansible v7.0.0 release at [Nov 23, 2022](https://pypi.org/project/ansible/7.0.0/).
- 11/24 Add `6` image, the Ansible v6.0.0 release at [Jun 22, 2022](https://pypi.org/project/ansible/6.0.0/).
- 11/24 Add `5` image, the Ansible v5.0.1 release at [Dec 3, 2021](https://pypi.org/project/ansible/5.0.1/).
- 11/24 Stop maintian `2.10` image and remove it, please use `3` image.

### 2021

- 07/11: Refactor the `2.9` Dockerfile with Python 3, and switch `latest` tag
    to `2.9`.
- 07/09: Add `4` image, the Ansible v4.0.0 release at [May 18 2021](https://docs.ansible.com/ansible/latest/roadmap/COLLECTIONS_4.html).
- 07/09: Add `3` image, the Ansible v3.0.0 release at [Feb 16 2021](https://docs.ansible.com/ansible/latest/roadmap/COLLECTIONS_3_0.html).
- 07/09: Add `2.10` image, the Ansible v2.10.0 release at [Aug 14 2020](https://github.com/ansible/ansible/releases/tag/v2.10.0).

### 2020

- 03/03 Add `ONBUILD` rule for copy current directory to `/srv/`.

### 2019

- 12/09: Refactor "Update the CA certificates" part for fixed "wget: error
    getting response: Connection reset by peer" problem.
    [(REF)](https://github.com/Yelp/dumb-init/issues/73)
- 11/14: Add `2.9` image, the Ansible v2.9.0 release at
    [Oct 31 2019](https://github.com/ansible/ansible/releases/tag/v2.9.0), and
    add install `py-netaddr` package.
- 07/04: Add `2.8` image, the Ansible v2.8.0 release at
    [May 17 2019](https://github.com/ansible/ansible/releases/tag/v2.8.0), and
    remove install the vim.

### 2018

- 10/11: Add `2.7` image, the Ansible v2.7.0 release at
    [Wed Oct 3 20:26:57 2018 -0700](https://github.com/ansible/ansible/releases/tag/v2.7.0).
- 07/10: Add `2.6` image, the Ansible v2.6.0 release at
    [Thu Jun 28 14:38:38 2018 -0700](https://github.com/ansible/ansible/releases/tag/v2.6.0).
- 04/03: Add `2.5` image, the Ansible v2.5.0 release at
    [Thu Mar 22 17:09:19 2018 -0700](https://github.com/ansible/ansible/releases/tag/v2.5.0).
- 02/19: The `2.4` image has upgraded the ansible from `2.4.2` to `2.4.3`.
- 01/10: Refactor the architecture. Add `2.4` image and add the `ansible-lint` package.

## License

MIT license from 2017-2025.

## Author Information

1. [Chu-Siang Lai](https://note.drx.tw)
