# 🛣️ Roadmap — AdastraLib & Softadastra

Ce document définit les grandes étapes de développement pour la bibliothèque C++ `adastra_lib` et son écosystème modulaire `softadastra`.

---

## 📌 Objectifs Généraux

- [x] Rendre `adastra_lib` totalement indépendante de SoftadastraBox
- [x] Compiler `adastra` et `softadastra` comme deux bibliothèques distinctes
- [x] Ajouter les modules initiaux : box, pay, chat, map, commerce
- [x] Intégrer GoogleTest pour les tests unitaires et d'intégration
- [x] Ajouter README, NOTES, et structure CMake propre

---

## 🔄 Avancement par Module

### 🔹 `adastra`

| Module          | État        | Tests       | Remarques                      |
| --------------- | ----------- | ----------- | ------------------------------ |
| utils           | ✅ Fait     | ⏳ À tester | Fonctions string, path, json   |
| core/algorithms | ✅ Fait     | ✅ En cours | Binary search, mergeSort, etc. |
| crypto          | ⏳ En cours | ❌ Non fait | SHA256, RSA, AES               |
| tools           | ✅ Fait     | ❌ Non fait | Logger, IDGenerator            |
| storage         | ✅ Fait     | ❌ Non fait | Système fichier                |

### 🔹 `softadastra`

| Module        | État       | Fonction `init()` | Objectif                               |
| ------------- | ---------- | ----------------- | -------------------------------------- |
| box           | ✅ OK      | ✅                | Stockage décentralisé                  |
| pay           | ✅ OK      | ✅                | Paiements (MTN, Airtel, crypto)        |
| chat          | ✅ OK      | ✅                | Chat en temps réel                     |
| map           | ✅ OK      | ✅                | Cartographie / localisation            |
| commerce      | ✅ OK      | ✅                | E-commerce (produits, boutiques, etc.) |
| rh, ai, forum | ❌ À créer | ❌                | Modules prévus                         |

---

## 🧪 Tests & Qualité

- [x] Intégrer GoogleTest
- [x] Ajouter un test pour `binarySearch`, `countingSort`, `fibonacci`
- [x] Ajouter un test d'intégration global des modules `softadastra`
- [ ] Ajouter benchmarks simples (performance/test)
- [ ] Activer couverture code (GCOV, lcov)

---

## 📖 Documentation

- [ ] Générer la doc Doxygen dans `docs/html/`
- [ ] Documenter chaque fonction exportée
- [ ] Créer des exemples pratiques `main.cpp`

---

## 🔐 Sécurité

- [ ] Vérifier tous les accès mémoire et buffer
- [ ] Ajouter tests valgrind
- [ ] Vérifier le bon usage des crypto primitives (si active)

---

## 📆 Prochaines Étapes (Semaine en cours)

- [ ] Ajouter modules : `forum`, `rh`, `livechat`
- [ ] Créer un module `ai` (détection visage ou NLP)
- [ ] Test unitaire pour `mergeSort()` et `combination()`
- [ ] Ajouter un système de plugin dynamique pour `softadastra`

---

## ✍️ Auteur

Projet par **Softadastra** — 2025  
https://softadastra.com
