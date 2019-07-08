FROM alpine:3.9

WORKDIR /root

RUN apk --no-cache update \
  && apk --no-cache add \
    bash \
    bash-completion \
    bind-tools \
    busybox-extras \
    # busybox-extras:
    #   dnsd, fakeidentd, ftpd, ftpget, ftpput, httpd, inetd, readahead, telnet,
    #   telnetd, tftp, tftpd, udhcpd
    bmon \
    curl \
    drill \
    htop \
    iftop \
    iperf3 \
    iptraf-ng \
    iputils \
    nethogs \
    nload \
    nmap \
    openssh-client \
    tcpdump \
    tshark \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /usr/local/share/curl

COPY files/bashrc /root/.bashrc
COPY bin/* /usr/local/bin/
COPY files/curl-stats.format /usr/local/share/curl/stats.format
