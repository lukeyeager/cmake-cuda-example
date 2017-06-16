# CUDA with CMake 3.8

With a super-recent build of CMake (https://gitlab.kitware.com/cmake/cmake/merge_requests/949), try this:
```
./run.sh -DCMAKE_VERBOSE_MAKEFILE=On -DCMAKE_CXX_COMPILER_LAUNCHER=ccache -DCMAKE_CUDA_COMPILER_LAUNCHER=ccache
```
