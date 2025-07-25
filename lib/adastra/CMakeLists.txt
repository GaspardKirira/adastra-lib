# ────────────────────────────────────────────────────────────────
# 📦 Compilation de la bibliothèque Adastra
# ────────────────────────────────────────────────────────────────

# 🔹 Ajouter les sous-modules de adastra
add_subdirectory(tools)
add_subdirectory(utils)
add_subdirectory(crypto)
add_subdirectory(network)
add_subdirectory(storage)
add_subdirectory(core)
add_subdirectory(config)
add_subdirectory(test_utils)
add_subdirectory(ai) # commenter si inutilisé

# 🔹 Créer la bibliothèque statique `adastra` avec un fichier source minimal
add_library(adastra STATIC dummy.cpp)

# 🔹 Lier tous les sous-modules
target_link_libraries(adastra PUBLIC
    tools
    utils
    crypto
    network
    storage
    core
    config
    test_utils
    ai

    Threads::Threads
    nlohmann_json::nlohmann_json
)

# 🔹 Inclure les headers
target_include_directories(adastra PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

# 🔹 Activer C++17
target_compile_features(adastra PUBLIC cxx_std_17)
