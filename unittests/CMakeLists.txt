# ────────────────────────────────────────────────────────────────
# 🧪 Adastra Unit Tests
# ────────────────────────────────────────────────────────────────

# Recherche récursive de tous les fichiers .cpp de test
file(GLOB_RECURSE UNIT_TEST_SOURCES CONFIGURE_DEPENDS *.cpp)

# Création de l'exécutable unique
add_executable(adastra_unittests ${UNIT_TEST_SOURCES})

# Inclure les headers publics
target_include_directories(adastra_unittests PRIVATE
    ${CMAKE_SOURCE_DIR}/include
)

# Lier les bibliothèques nécessaires
target_link_libraries(adastra_unittests PRIVATE
    adastra
    softadastra
    Threads::Threads
    nlohmann_json::nlohmann_json
    gtest
    gtest_main
)

# Catch2 (optionnel)
if(ENABLE_CATCH2)
    target_link_libraries(adastra_unittests PRIVATE Catch2::Catch2WithMain)
endif()

# Déclaration du test pour CTest
add_test(NAME adastra_all_tests COMMAND adastra_unittests)
