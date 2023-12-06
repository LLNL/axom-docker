#FROM axom/compilers:ubuntu-22-base_latest
FROM axom/ubuntu-22

LABEL maintainer="Chris White <white238@llnl.gov>"

# These apt packages are required for the llvm script
RUN \
    sudo apt -qq install -fy --no-install-recommends lsb-release wget software-properties-common gnupg \
    && sudo apt update && sudo apt upgrade \
    && sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && wget --no-check-certificate https://apt.llvm.org/llvm.sh \
    && chmod +x llvm.sh \
    && sudo ./llvm.sh 16 \
    && sudo sudo apt-get -qq install -y --no-install-recommends clang-format-16 \
    && sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-16 100 \
    && sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-16 100 \
    && sudo update-alternatives --install /usr/bin/cc cc /usr/bin/clang-16 100 \
    && sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-16 100 \
    && sudo update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-16 100 \
    && sudo update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-16 100
USER axom
WORKDIR /home/axom
