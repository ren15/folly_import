git clone https://github.com/Microsoft/vcpkg.git ~/vcpkg
~/vcpkg/bootstrap-vcpkg.sh

~/vcpkg/vcpkg install folly
~/vcpkg/vcpkg install fmt
~/vcpkg/vcpkg install range-v3
~/vcpkg/vcpkg install benchmark
~/vcpkg/vcpkg install gtest
