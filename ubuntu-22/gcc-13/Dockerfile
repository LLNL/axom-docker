FROM axom/compilers:ubuntu-22-base_latest

LABEL maintainer="Chris White <white238@llnl.gov>"

RUN \
    sudo apt-get -qq install -y --no-install-recommends g++-13 \
    && sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-13 100 \
    && sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 100 \
    && sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-13 100 \
    && sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-13 100

USER axom
WORKDIR /home/axom
