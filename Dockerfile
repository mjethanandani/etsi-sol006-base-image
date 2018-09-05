from ubuntu:18.10

ARG CONFD_VER

ADD Confd-Basic-License-Agreement-1.1x.pdf /
ADD confd-basic-${CONFD_VER}.linux.x86_64/confd-basic-${CONFD_VER}.linux.x86_64.installer.bin /confd-install

RUN apt-get update; apt-get install -y \
        openssh-client \
        python \
    && rm -rf /var/lib/apt/lists/*; \
    rm -rf /opt/confd; \
    ./confd-install /opt/confd; \
    echo '. /opt/confd/confdrc' >> /root/.bashrc; \
    rm confd-install; \
    rm -rf /tmp/*
