FROM alpine:3.17

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

ONBUILD RUN echo "===> Update the CA certificate ..."                     && \
      apk add --update --no-cache                                            \
        ca-certificates                                                      \
        openssl                                                              \
      && update-ca-certificates                                           && \
    echo "===> Upgrade some pip packages ..."                             && \
      pip3 install -U                                                        \
        cffi                                                                 \
        pip                                                               && \
      rm -rf ~/.cache/pip

RUN echo "===> Install apk packages ..."                                  && \
      apk add --update --no-cache                                            \
        bash                                                                 \
        bash-completion                                                      \
        build-base                                                           \
        curl                                                                 \
        git                                                                  \
        libffi-dev                                                           \
        make                                                                 \
        openssh-client                                                       \
        openssl-dev                                                          \
        py-netaddr                                                           \
        py3-cryptography                                                     \
        py3-jinja2                                                           \
        py3-paramiko                                                         \
        py3-pip                                                              \
        py3-six                                                              \
        py3-yaml                                                             \
        python3                                                              \
        python3-dev                                                          \
        sshpass                                                              \
        wget                                                              && \
    echo "===> Install some pip packages ..."                             && \
      pip3 install                                                           \
        'ansible>=3.0.0,<4.0.0'                                              \
        ansible-lint                                                      && \
      rm -rf ~/.cache/pip                                                 && \
    echo "===> Disable localhost warning message ..."                     && \
      mkdir /etc/ansible                                                  && \
      /bin/echo -e "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

WORKDIR /srv

ONBUILD WORKDIR /srv

ONBUILD COPY . /srv

CMD [ "ansible-playbook", "--version" ]
