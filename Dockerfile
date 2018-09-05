from ubuntu:18.10

ADD Confd-Basic-License-Agreement-1.1x.pdf /
ADD confd-basic-6.6.linux.x86_64/confd-basic-6.6.linux.x86_64.installer.bin /confd-install

RUN apt-get update; apt-get install -y \
        openssh-client \
        python \
    && rm -rf /var/lib/apt/lists/*; \
    rm -rf /opt/confd; \
    ./confd-install /opt/confd; \
    echo '. /opt/confd/confdrc' >> /root/.bashrc; \
    rm confd-install; \
    rm -rf /tmp/*
