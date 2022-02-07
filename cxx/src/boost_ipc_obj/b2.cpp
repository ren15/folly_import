#include <boost/interprocess/managed_shared_memory.hpp>
#include <fmt/core.h>

using namespace boost::interprocess;

int main()
{
    managed_shared_memory managed_shm { open_or_create, "Boost", 1024 };
    std::pair<int*, std::size_t> p = managed_shm.find<int>("Integer");
    if (p.first) {
        fmt::print("integer read from shm: {}\n", *p.first);
    }
}