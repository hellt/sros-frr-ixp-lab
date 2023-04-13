FROM pierky/bird:2.0.11

# install some useful tools
RUN apt update && apt install -y \
    iproute2 \
    iputils-ping \
    net-tools \
    tcpdump \
    vim

# this entrypoint assumes that the bird config file is mounted at /usr/local/etc/bird.conf
# which is the default location for pierky/bird v2
ENTRYPOINT ["bird", "-d"]