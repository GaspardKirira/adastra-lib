# 🚀 AdastraLib

**Bibliothèque C++ modulaire** pour construire des systèmes performants, robustes et évolutifs.  
Elle alimente l’écosystème **Softadastra** : plateforme décentralisée, e-commerce, chat, paiement, stockage P2P et plus.

---

## 📂 Structure principale

```
adastra_lib/
├── include/           # Fichiers d’en-tête publics (adastra/ et softadastra/)
├── lib/               # Code source des modules compilables
├── src/               # Point d’entrée de l’application (main.cpp)
├── test/              # Tests d’intégration (GoogleTest)
├── unittests/         # Tests unitaires modulaires
├── config/, architecture/ → Configs et documentation technique
```

---

## 🔧 Bibliothèques compilées

| Nom           | Description                                            |
| ------------- | ------------------------------------------------------ |
| `adastra`     | Modules fondamentaux : `utils`, `crypto`, `core`, etc. |
| `softadastra` | Modules spécifiques à l'écosystème (chat, pay, box, …) |

---

## ⚙️ Compilation

```bash
# Étapes de compilation
mkdir build && cd build
cmake .. -DBUILD_TESTS=ON
make
```

🔹 Désactiver les tests pour un build production :

```bash
cmake .. -DBUILD_TESTS=OFF
```

🔹 Options supplémentaires :

- `-DENABLE_OPTIMIZATION=ON` : active `-O3`
- `-DENABLE_SANITIZERS=ON` : active `-fsanitize`

---

## 🧪 Lancer les tests

```bash
# Tests unitaires (Catch2 / GoogleTest)
./bin/adastra_unittests

# Tests d’intégration (GoogleTest)
./bin/adastra_tests
```

---

## 📥 Modules Softadastra inclus

| Module     | Description                       |
| ---------- | --------------------------------- |
| `box`      | Stockage décentralisé (P2P)       |
| `commerce` | Fonctionnalités e-commerce        |
| `pay`      | Paiement, wallet, sécurité        |
| `chat`     | Système de messagerie temps réel  |
| `map`      | Géolocalisation et cartes         |
| `pme`      | Outils pour petites entreprises   |
| `rh`       | Gestion des utilisateurs & droits |

---

## 🧱 Dépendances

- [nlohmann/json](https://github.com/nlohmann/json)
- [GoogleTest](https://github.com/google/googletest)
- [Catch2 (optionnel)](https://github.com/catchorg/Catch2)
- SQLite3, OpenSSL, Threads (système)

---

## 🔖 Versions

Ce projet suit [Semantic Versioning](https://semver.org/lang/fr/).  
Consultez le [CHANGELOG.md](./CHANGELOG.md) pour voir l’historique.

---

## 🧑‍💻 Auteur

**Softadastra**  
https://softadastra.com  
© 2025. Tous droits réservés.

---

## 📄 Licence

MIT ou propre à l’écosystème Softadastra (selon choix final).  
À préciser dans `LICENSE`.
