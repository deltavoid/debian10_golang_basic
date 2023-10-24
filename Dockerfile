FROM deltavoid/debian10_dev_basic:2023.07.20


SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y \
    golang-1.15

ADD append.bashrc /tmp/append.bashrc
RUN cat /tmp/append.bashrc >> ~/.bashrc


RUN source ~/.bashrc && go version

# ADD test_version.sh /tmp/test_version.sh
# RUN bash /tmp/test_version.sh



