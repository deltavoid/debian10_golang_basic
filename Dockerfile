FROM deltavoid/debian10_dev_basic:2023.07.20


RUN apt-get update && apt-get install -y \
    golang-1.15

ADD append.bashrc /tmp/append.bashrc

RUN cat /tmp/append.bashrc >> ~/.bashrc

RUN go version
