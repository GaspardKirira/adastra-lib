# 📦 Changelog – Adastra Lib

Toutes les modifications notables de ce projet seront documentées dans ce fichier.

Le format est basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/)
et ce projet suit [Semantic Versioning](https://semver.org/lang/fr/).

---

## [v0.1.0] - 2025-07-25

### 🎉 Première version publique

### ✨ Ajouté

- Architecture de base du projet (`lib`, `src`, `include`, `test`, `unittests`)
- Intégration de `nlohmann/json`, `GoogleTest`, `Catch2` (optionnel)
- Configuration CMake modulaire et désactivable pour les tests
- Compilation multi-plateforme optimisée (`-O3`, `-fsanitize`)
- Modules de base :
  - `core`, `crypto`, `utils`, `tools`, `test_utils`, `config`
  - Modules applicatifs dans `lib/softadastra/` (chat, blockchain, http, etc.)
- Système complet de tests (`adastra_tests`, `adastra_unittests`)
- Script de version et automatisation (`Makefile`, tag Git)

---

## 📌 À venir

### 🔧 En cours de développement

- Implémentation des algorithmes de chiffrement P2P (`lib/adastra/network`)
- Ajout de la documentation par module (doxygen/jsondoc)
- Publication officielle sur GitHub avec README détaillé et badge CI
