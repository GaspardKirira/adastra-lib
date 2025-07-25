#!/bin/bash

# Détermine le chemin du binaire
BINARY="./build/bin/adastra_main"

# Vérifie si le binaire existe
if [ -f "$BINARY" ]; then
    echo "🚀 Lancement de adastra_main..."
    $BINARY
else
    echo "❌ Binaire non trouvé : $BINARY"
    echo "👉 Compile d'abord avec ./build_prod.sh ou ./build_dev.sh"
fi
