# 🤝 Contribuer à AdastraLib

Merci de ton intérêt pour contribuer à **AdastraLib** ! Ce projet vise à bâtir une base C++ modulaire et puissante pour l'écosystème Softadastra. Voici comment tu peux aider.

---

## 📦 Structure du projet

- `include/` — Fichiers d'en-tête publics (interfaces)
- `lib/` — Modules compilables (core, crypto, utils, etc.)
- `src/` — Point d’entrée de l'application
- `test/` — Tests d’intégration
- `unittests/` — Tests unitaires par module

---

## 🚀 Démarrage rapide

```bash
git clone https://github.com/GaspardKirira/adastra-lib.git
cd adastra-lib
mkdir build && cd build
cmake .. -DBUILD_TESTS=ON
make
```

---

## 🌱 Branches

- `main` : branche stable (ne jamais coder directement ici)
- `dev` : branche de développement (toutes les features passent par ici)

Crée une branche pour chaque fonctionnalité :

```bash
git checkout dev
git checkout -b feat/ma-nouvelle-feature
```

---

## 🧪 Tests

Avant tout `commit`, assure-toi que tous les tests passent :

```bash
./bin/adastra_unittests
./bin/adastra_tests
```

---

## ✍️ Conventions de commit

Utilise les conventions [Conventional Commits](https://www.conventionalcommits.org/fr/v1.0.0/) :

- `✨ feat:` nouvelle fonctionnalité
- `🐛 fix:` correction de bug
- `📦 build:` changements liés au système de build
- `🧪 test:` ajout ou mise à jour de tests
- `📝 docs:` documentation uniquement
- `♻️ refactor:` refactoring sans changement de comportement
- `🚀 perf:` amélioration des performances

---

## 📋 Pull Request

Avant d’envoyer une PR :

- Assure-toi que ton code est clair, commenté et testé
- Résous les conflits éventuels avec `main`
- Fournis une description claire de la PR

---

## ❤️ Code de conduite

Sois respectueux, bienveillant et clair. Toute forme de toxicité ou de harcèlement est bannie.

---

Merci pour ta contribution ! 🚀
