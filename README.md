# folly_import


Use cmake to import folly project

Use MPMC queue

Use Boost ipc objects


## Known issues:
`cxx/src/test/UnboundedQueueTest.cpp --bench` cannot bench

TODO:

https://github.com/ren15/folly_ci This repo clones and use the repo's instruction to build folly. Sometimes it fails.  
So we need to free on commit to complie and pack artifacts to docker image or release artifacts.

This repo aims at how to package folly into a C++ project. 
- We need binary distribution. May it be conan.
- We need cache build env to skill 30-min of folly compiling time. 
    https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions  
    Add "build image" on certain workflow files.  
    Then just import for caching purpose.

