FROM alpine:3.14

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

RUN echo "===> Update the index of available packages ..."                && \
      apk update

ONBUILD RUN echo "===> Update the CA certificates ..."                    && \
      apk add --update --no-cache \
        ca-certificates           \
        openssl                   \
      && update-ca-certificates

RUN echo "===> Install the requires apk package and python ..."           && \
      apk add --no-cache  \
        build-base        \
        libffi-dev        \
        openssl-dev       \
        py3-cryptography  \
        py3-jinja2        \
        py3-paramiko      \
        py3-pip           \
        py3-six           \
        py3-yaml          \
        python3           \
        python3-dev       \
        wget

RUN echo "===> Upgrade the pip to lastest ..."                            && \
      pip3 install -U  \
        pip            \
        cffi

RUN echo "===> Install the ansible ..."                                   && \
      pip3 install                                                           \
        'ansible>=4.0.0,<5.0.0'                                              \
        ansible-lint

RUN echo "===> Disable localhost warning message ..."                     && \
      mkdir /etc/ansible                                                  && \
      /bin/echo -e "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

RUN echo "===> Install some package ..."                                  && \
      apk add --update --no-cache   \
        bash                        \
        bash-completion             \
        curl                        \
        git                         \
        make                        \
        openssh-client              \
        py-netaddr                  \
        sshpass

RUN echo "===> Removing package cache ..."  && \
      rm -rf /var/cache/apk/*               && \
      rm -rf ~/.cache/pip

WORKDIR /srv

ONBUILD WORKDIR /srv
ONBUILD COPY . /srv

CMD [ "ansible-playbook", "--version" ]
