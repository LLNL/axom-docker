FROM ubuntu:22.04

LABEL maintainer="Chris White <white238@llnl.gov>"

ADD generic-setup.sh /root/generic-setup.sh

RUN chmod -R a+x /root/generic-setup.sh
RUN /root/generic-setup.sh

USER axom
WORKDIR /home/axom
