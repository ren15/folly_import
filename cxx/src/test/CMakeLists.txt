set(target_name main)
add_executable(${target_name}
main.cpp
)

target_link_libraries(${target_name} PRIVATE 
${CONAN_LIBS}
fmt::fmt
)

# ======================================================


set(target_name unbounded_queue_test)
add_executable(${target_name}
UnboundedQueueTest.cpp
)


target_link_libraries(${target_name} PRIVATE 
Folly::folly Folly::folly_deps Folly::follybenchmark Folly::folly_test_util
GTest::gmock GTest::gtest GTest::gmock_main GTest::gtest_main
${CONAN_LIBS}
)

