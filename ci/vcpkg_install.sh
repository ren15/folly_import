git clone https://github.com/Microsoft/vcpkg.git /opt/toolchain/vcpkg
/opt/toolchain/vcpkg/bootstrap-vcpkg.sh

/opt/toolchain/vcpkg/vcpkg install \
    folly \
    benchmark \
    gtest \
    boost
ln -sf /opt/toolchain/vcpkg/vcpkg /usr/local/bin/vcpkg