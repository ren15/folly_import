set -xe

export DEBIAN_FRONTEND=noninteractive
apt-get update 
apt-get install -y \
    git \
    build-essential \
    python3 \
    python3-pip \
    ninja-build \
    make \
    gcc \
    clang clang-tidy clangd \
    curl zip unzip tar \
    cmake 

pip install conan



