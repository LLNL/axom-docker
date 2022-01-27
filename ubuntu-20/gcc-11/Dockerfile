FROM axom/compilers:ubuntu-20-base_latest

LABEL maintainer="Chris White <white238@llnl.gov>"

RUN \
       sudo apt-get -qq install -y --no-install-recommends software-properties-common \
    && sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && sudo apt update \
    && sudo apt-get -qq install -y --no-install-recommends g++-11 \
    && sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 100 \
    && sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 100 \
    && sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-11 100 \
    && sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-11 100

USER axom
WORKDIR /home/axom
