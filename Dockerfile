FROM alpine:3.9

RUN apk --no-cache update \
  && apk --no-cache add \
    bash \
    bash-completion \
    bind-tools \
    bmon \
    curl \
    drill \
    iftop \
    iperf3 \
    iptraf-ng \
    iputils \
    nload \
    nmap \
    openssh-client \
    tcpdump \
  && rm -rf /var/cache/apk/*
WORKDIR /root
COPY bashrc /root/.bashrc
