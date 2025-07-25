#!/bin/bash

echo "🚀 Compilation en mode PRODUCTION..."

# Crée un dossier de build propre
rm -rf build
mkdir build && cd build

# Configure CMake avec les options de production
cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_TESTS=OFF \
    -DENABLE_OPTIMIZATION=ON

# Compile en parallèle
make -j$(nproc)

echo "✅ Build production terminé. Binaire dans ./bin/"
