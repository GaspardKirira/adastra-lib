AdastraLib — Bibliothèque C++ modulaire de base + écosystème Softadastra

📂 Structure principale
────────────────────────────
- include/           → Fichiers d’en-tête publics (adastra/ et softadastra/)
- lib/               → Code source des modules compilables
- src/               → Point d’entrée (main.cpp facultatif)
- test/              → Tests d’intégration (GoogleTest)
- unittests/         → Tests unitaires modulaires
- config/, architecture/ → Configs et docs internes

🔧 Bibliothèques compilées
────────────────────────────
- `adastra`        → Modules fondamentaux (utils, crypto, core, etc.)
- `softadastra`    → Modules spécifiques à l'écosystème (box, pay, chat, …)

⚙️ Compilation
────────────────────────────
mkdir build && cd build
cmake .. -DBUILD_TESTS=ON
make

🧪 Tests
────────────────────────────
# Tests unitaires
./bin/adastra_unittests

# Tests d’intégration
./bin/adastra_tests

📥 Modules Softadastra
────────────────────────────
- box          → Stockage décentralisé
- commerce     → Fonctionnalités e-commerce
- pay          → Paiement et wallet
- chat         → Système de messagerie
- map          → Géolocalisation et cartes

🚀 Auteur
────────────────────────────
Softadastra (https://softadastra.com)
© 2025. Tous droits réservés.

