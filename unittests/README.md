# 🧪 Tests unitaires — `unittests/`

Ce dossier contient les tests unitaires de la bibliothèque `adastra_lib`, organisés par module (`utils`, `crypto`, `tools`, etc.).

## ✅ Objectif

Valider automatiquement le bon fonctionnement de chaque composant de la bibliothèque à l’aide de **GoogleTest** (et optionnellement **Catch2**).

---

## 📦 Dépendances

- [GoogleTest](https://github.com/google/googletest) (automatiquement inclus si `BUILD_TESTS=ON`)
- [Catch2](https://github.com/catchorg/Catch2) (optionnel, activé si `ENABLE_CATCH2=ON`)

---

## ⚙️ Compilation

Depuis la racine de `adastra_lib`, utilise CMake pour compiler les tests :

mkdir -p build && cd build
cmake .. -DBUILD_TESTS=ON -DENABLE_CATCH2=OFF # ou ON si tu veux Catch2
make

```

🚀 Exécution des tests
Une fois compilés, exécute tous les tests avec :

./bin/adastra_unittests


```

Ou via CTest (intégré avec CMake) :

---

ctest --output-on-failure

🧩 Ajouter un test
Crée un nouveau fichier dans unittests/<module>/, par exemple :

Exemple minimal avec GoogleTest :

#include <gtest/gtest.h>
#include <adastra/utils/string/CaseConverter.hpp> // Exemple fictif

TEST(StringUtils, ToUppercase) {
std::string input = "softadastra";
std::string result = adastra::to_upper(input);
EXPECT_EQ(result, "SOFTADASTRA");
}

Le fichier sera automatiquement détecté et intégré par CMake (grâce au file(GLOB_RECURSE)).

🗂 Structure recommandée

unittests/
├── utils/
│ └── test_string.cpp
├── crypto/
│ └── test_hash.cpp
├── tools/
│ └── test_logger.cpp

📌 Remarques
Chaque test doit être isolé, clair, et réutilisable.

Tu peux mélanger des tests GoogleTest et Catch2 (si ENABLE_CATCH2=ON), mais il est recommandé d'utiliser un seul framework par test.

Le binaire généré est bin/adastra_unittests.

---

📞 Besoin d'aide ?
Contacte l'équipe du projet ou consulte la documentation dans docs/ (à venir).
