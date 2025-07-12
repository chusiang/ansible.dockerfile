FROM alpine:3.22

LABEL org.opencontainers.image.authors="chusiang@drx.tw"

RUN echo "===> Install apk packages ..." && \
  apk add --update --no-cache \
  ca-certificates \
  bash \
  bash-completion \
  build-base \
  curl \
  git \
  libffi-dev \
  make \
  openssh-client \
  openssl \
  openssl-dev \
  py-netaddr \
  py3-cryptography \
  py3-jinja2 \
  py3-paramiko \
  py3-pip \
  py3-six \
  py3-yaml \
  python3 \
  python3-dev \
  sshpass \
  wget && \
  && update-ca-certificates
  echo "===> Disable localhost warning message ..."                       && \
  mkdir /etc/ansible                                                      && \
  /bin/echo -e "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

RUN echo "===> Switch normal user for security ..."                        && \
  adduser -D ansibull
USER ansibull
WORKDIR /home/ansibull
ENV PATH="/home/ansibull/.local/bin:${PATH}"

RUN echo "===> Install pip packages ..."                                  && \
  pip3 install --break-system-packages                                       \
    'ansible>=8.0.0,<9.0.0'                                                  \
    'ansible-lint>=24,<25'                                                && \
  rm -rf ~/.cache/pip

ONBUILD WORKDIR /home/ansibull

ONBUILD COPY . /home/ansibull

CMD [ "ansible-playbook", "--version" ]
