FROM alpine:3.6

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

# Update the index of available packages.
RUN apk update

# Install the requires apk package and python.
RUN apk add --no-cache build-base python py-pip python-dev \
        libffi-dev openssl-dev

# Upgrade the pip to lastest.
RUN pip install -U pip cffi

# Setup the ansible.
RUN pip install 'ansible>=2.3.0,<2.4.0'

# for disable localhost warning message.
RUN mkdir /etc/ansible && \
      /bin/echo -e "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

RUN echo "===> Install some package ..."  && \
      apk add --update --no-cache \
      bash \
      bash-completion \
      curl \
      git \
      make \
      openssh-client \
      sshpass \
      vim

RUN echo "===> Removing package cache ..."  && \
      apk del build-dependencies             ; \
      rm -rf /var/cache/apk/*               && \
      rm -rf ~/.cache/pip

ONBUILD  RUN echo "===> Updating TLS certificates ..."  && \
      apk add --update openssl ca-certificates

WORKDIR /srv

CMD [ "ansible-playbook", "--version" ]
