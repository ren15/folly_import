#include <boost/interprocess/managed_shared_memory.hpp>
#include <fmt/core.h>

#include <random>

using namespace boost::interprocess;

int main()
{
    std::random_device dev;
    std::mt19937 rng(dev());
    auto dist100 = std::uniform_int_distribution<std::mt19937::result_type>(0, 100);
    int random_int = dist100(rng);

    shared_memory_object::remove("Boost");
    auto managed_shm = managed_shared_memory { open_or_create, "Boost", 1024 };

    int* i = managed_shm.construct<int>("Integer")(random_int);
    fmt::print("random integer in shm set to {}\n", *i);
}