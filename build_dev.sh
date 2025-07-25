#!/bin/bash

echo "🧪 Compilation en mode DÉVELOPPEMENT..."

# Crée un dossier de build propre
rm -rf build
mkdir build && cd build

# Configure CMake avec les options de dev (avec tests)
cmake .. \
    -DCMAKE_BUILD_TYPE=Debug \
    -DBUILD_TESTS=ON

# Compile en parallèle
make -j$(nproc)

echo "✅ Build développement terminé. Binaire dans ./bin/"

# (Optionnel) Lancer les tests automatiquement
echo "🔍 Lancement des tests..."
ctest --output-on-failure
