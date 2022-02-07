add_executable(b1
b1.cpp
)

target_link_libraries(b1 PRIVATE 
${CONAN_LIBS}
fmt::fmt
Boost::boost 
pthread
rt
)

add_executable(b2
b2.cpp
)

target_link_libraries(b2 PRIVATE 
${CONAN_LIBS}
fmt::fmt
Boost::boost 
pthread
rt
)
