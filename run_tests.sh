#!/bin/bash

echo "🧪 Exécution des tests..."

# Emplacement des exécutables
INTEGRATION="./build/bin/adastra_tests"
UNIT="./build/bin/adastra_unittests"

# Tests d'intégration
if [ -f "$INTEGRATION" ]; then
    echo "➡️ Tests d'intégration :"
    $INTEGRATION
else
    echo "❌ Fichier non trouvé : $INTEGRATION"
fi

# Tests unitaires
if [ -f "$UNIT" ]; then
    echo "➡️ Tests unitaires :"
    $UNIT
else
    echo "❌ Fichier non trouvé : $UNIT"
fi
