#!/bin/sh
set -e
set -x

apt-get -qq update
# Needs to be noninteractive
DEBIAN_FRONTEND="noninteractive" TZ="America/Los_Angeles" apt-get -qq install -fy tzdata
apt-get -qq install -fy --no-install-recommends build-essential ca-certificates curl dh-autoreconf git lcov ninja-build pkg-config python3-dev python3-pip sudo vim wget xsltproc

# Install Clingo for Spack
python3 -m pip install --upgrade pip
python3 -m pip install clingo

wget -q --no-check-certificate https://cmake.org/files/v3.23/cmake-3.23.1-linux-x86_64.tar.gz
tar -xzf cmake-3.23.1-linux-x86_64.tar.gz
rm -r cmake-3.23.1-linux-x86_64/share/vim/vimfiles
cp -fR cmake-3.23.1-linux-x86_64/* /usr
rm -rf cmake-3.23.1-linux-x86_64
rm cmake-3.23.1-linux-x86_64.tar.gz

useradd -ms /bin/bash axom
printf "axom:axom" | chpasswd
adduser axom sudo
printf "axom ALL= NOPASSWD: ALL\\n" >> /etc/sudoers
