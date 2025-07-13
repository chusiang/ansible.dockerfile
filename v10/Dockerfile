# --- Stage 1: Builder -----------------------------------------------

FROM alpine:3.22 AS builder

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
  wget \
  && update-ca-certificates \
  && rm -rf /var/cache/apk/*

RUN echo "===> Install pip packages ..." && \
  pip3 install 'ansible>=10.0.0,<11.0.0' 'ansible-lint>=24,<25' \
  --break-system-packages && \
  rm -rf ~/.cache/pip

# --- Stage 2: Runtime -----------------------------------------------

FROM alpine:3.22 AS release

LABEL org.opencontainers.image.authors="chusiang@drx.tw"

# Copy built artifacts from "Stage 1: Builder".
COPY --from=builder /usr/lib/python3.12/site-packages /usr/lib/python3.12/site-packages
COPY --from=builder /usr/bin/ansible* /usr/bin/

RUN echo "===> Installing runtime dependencies..." && \
  apk add --update --no-cache \
  ca-certificates \
  bash \
  bash-completion \
  curl \
  git \
  openssh-client \
  openssl \
  python3 \
  sshpass \
  wget \
  && update-ca-certificates \
  && rm -rf /var/cache/apk/*

RUN echo "===> Disable localhost warning message ..." && \
  mkdir /etc/ansible && \
  /bin/echo -e "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

RUN echo "===> Switch normal user for security ..." && \
  adduser -D ansibull
USER ansibull
WORKDIR /home/ansibull
ENV PATH="/home/ansibull/.local/bin:${PATH}:/usr/bin"

ONBUILD WORKDIR /home/ansibull
ONBUILD COPY . /home/ansibull

CMD [ "ansible-playbook", "--version" ]
