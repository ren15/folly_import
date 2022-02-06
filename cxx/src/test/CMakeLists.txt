set(target_name main)
add_executable(${target_name}
main.cpp
)
target_link_libraries(${target_name}
${CONAN_LIBS}
)
