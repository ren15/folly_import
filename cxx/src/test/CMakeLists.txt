set(target_name main)
add_executable(${target_name}
main.cpp
)

find_package(fmt CONFIG REQUIRED)
target_link_libraries(${target_name} PRIVATE fmt::fmt)

# ======================================================


set(target_name unbounded_queue_test)
add_executable(${target_name}
UnboundedQueueTest.cpp
)

find_package(folly CONFIG REQUIRED)
find_package(GTest CONFIG REQUIRED)

target_link_libraries(${target_name} 
PRIVATE 
Folly::folly Folly::folly_deps Folly::follybenchmark Folly::folly_test_util
GTest::gmock GTest::gtest GTest::gmock_main GTest::gtest_main
)

