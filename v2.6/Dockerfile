FROM alpine:3.8

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

RUN echo "===> Update the index of available packages ..."  && \
      apk update

ONBUILD RUN echo "===> Update the CA certificates ..."  && \
      apk add --update --no-cache openssl ca-certificates && update-ca-certificates

RUN echo "===> Install the requires apk package and python ..."  && \
      apk add --no-cache build-base python py-pip python-dev \
        libffi-dev openssl-dev wget

RUN echo "===> Upgrade the pip to lastest ..."  && \
      pip install -U pip cffi

RUN echo "===> Install the ansible ..."  && \
      pip install 'ansible>=2.6.0,<2.7.0'

RUN echo "===> Install the ansible-lint ..."  && \
      pip install 'ansible-lint'

RUN echo "===> Disable localhost warning message ..."  && \
      mkdir /etc/ansible && \
      /bin/echo -e "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

RUN echo "===> Install some package ..."  && \
      apk add --update --no-cache \
      bash \
      bash-completion \
      curl \
      git \
      make \
      openssh-client \
      py-netaddr \
      sshpass

RUN echo "===> Removing package cache ..."  && \
      apk del build-dependencies             ; \
      rm -rf /var/cache/apk/*               && \
      rm -rf ~/.cache/pip

WORKDIR /srv

ONBUILD WORKDIR /srv
ONBUILD COPY . /srv

CMD [ "ansible-playbook", "--version" ]
