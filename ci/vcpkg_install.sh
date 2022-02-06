git clone https://github.com/Microsoft/vcpkg.git
./vcpkg/bootstrap-vcpkg.sh
ln -sf ./vcpkg/vcpkg /usr/local/bin/vcpkg
ls -lah /usr/local/bin/

./vcpkg/vcpkg install folly
./vcpkg/vcpkg install fmt
./vcpkg/vcpkg install range-v3
