git clone https://github.com/Microsoft/vcpkg.git
./vcpkg/bootstrap-vcpkg.sh
ln -sf ./vcpkg/vcpkg /usr/local/bin/vcpkg

vcpkg install folly
vcpkg install fmt
vcpkg install range-v3
