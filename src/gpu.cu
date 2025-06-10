#include <iostream>
#include "gpu.hpp"

void printCudaVersion()
{
#ifdef OLD_CUDA
    std::cout << "CUDA Compiled version: " << __CUDACC_VER__ << std::endl;
#else
    std::cout << "CUDA Compiled version: " << __CUDACC_VER_MAJOR__ * 10000 + __CUDACC_VER_MAJOR__ * 100 + __CUDACC_VER_BUILD__ << std::endl;
#endif

    int runtime_ver;
    cudaRuntimeGetVersion(&runtime_ver);
    std::cout << "CUDA Runtime version: " << runtime_ver << std::endl;

    int driver_ver;
    cudaDriverGetVersion(&driver_ver);
    std::cout << "CUDA Driver version: " << driver_ver << std::endl;
}
