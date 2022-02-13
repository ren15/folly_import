FROM ubuntu:20.04
WORKDIR /root
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    # passwordless sudo for users in the 'sudo' group
    && touch /etc/sudoers && sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers
ADD deb_install.sh /root
ADD vcpkg_install.sh /root
RUN cd /root && bash deb_install.sh && bash vcpkg_install.sh