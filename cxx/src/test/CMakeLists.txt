set(target_name main)
add_executable(${target_name}
main.cpp
)

find_package(fmt CONFIG REQUIRED)
target_link_libraries(main PRIVATE fmt::fmt)

