FROM alpine:3.9

WORKDIR /root

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
  && rm -rf /var/cache/apk/* \
  && mkdir -p /usr/local/share/curl

COPY files/bashrc /root/.bashrc
COPY bin/* /usr/local/bin/
COPY files/curl-stats.format /usr/local/share/curl/stats.format
