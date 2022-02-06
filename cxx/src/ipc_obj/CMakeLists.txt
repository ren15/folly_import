set(target_name boost_ipc_obj)
add_executable(${target_name}
main.cpp
)

find_package(fmt CONFIG REQUIRED)
target_link_libraries(${target_name} PRIVATE fmt::fmt)




add_executable(b1
b1.cpp
)

