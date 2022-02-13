set -xe
export DEBIAN_FRONTEND=noninteractive

apt-get update 
apt-get upgrade -y

apt-get install -y \
    build-essential \
    python3 python3-pip \
    ninja-build \
    cmake \
    make \
    gcc \
    clang clang-tidy clangd \
    curl zip unzip tar \
    pkg-config \
    htop \
    git

apt-get install -y sudo
useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod 
    # passwordless sudo for users in the 'sudo' group
sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

apt-get clean
rm -rf /var/lib/apt/lists/*

pip install conan
