# ────────────────────────────────────────────────────────────────
# 🧪 Tests d'intégration — dossier `test/`
# ────────────────────────────────────────────────────────────────

# Recherche tous les fichiers de test .cpp dans test/integration/, test/performance/, etc.
file(GLOB_RECURSE TEST_SOURCES CONFIGURE_DEPENDS *.cpp)

# Crée un exécutable pour les tests d’intégration
add_executable(adastra_tests ${TEST_SOURCES})

# Inclure les headers publics (adastra & softadastra)
target_include_directories(adastra_tests PRIVATE
    ${CMAKE_SOURCE_DIR}/include
)

# Lier les bibliothèques nécessaires
target_link_libraries(adastra_tests PRIVATE
    adastra
    softadastra
    Threads::Threads
    nlohmann_json::nlohmann_json
    gtest
    gtest_main
)

# Standard C++17
target_compile_features(adastra_tests PRIVATE cxx_std_17)

# Ajout à CTest
add_test(NAME adastra_integration_tests COMMAND adastra_tests)
