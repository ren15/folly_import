FROM ubuntu:20.04
WORKDIR /root
ADD deb_install.sh /root
ADD vcpkg_install.sh /root
RUN cd /root && bash deb_install.sh && bash vcpkg_install.sh
