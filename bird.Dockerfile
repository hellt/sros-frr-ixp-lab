FROM pierky/bird:2.0.11

RUN apt update && apt install -y \
    iproute2 \
    iputils-ping \
    net-tools \
    tcpdump \
    vim

ENTRYPOINT ["bird", "-d"]