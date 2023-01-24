#!/bin/bash -v
mkdir build 
cd build
conan profile update settings.compiler.libcxx=libstdc++11 default
conan install  .. --build=missing -c tools.system.package_manager:mode=install -c tools.system.package_manager:sudo=True
cmake .. 
cmake --build . --config Release
cd ..
