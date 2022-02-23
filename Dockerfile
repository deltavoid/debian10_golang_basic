FROM deltavoid/debian10_ssh_key


RUN apt-get update && apt-get install -y \
    golang-1.15

ADD append.bashrc /tmp/append.bashrc

RUN cat /tmp/append.bashrc >> ~/.bashrc

