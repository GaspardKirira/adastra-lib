# ────────────────────────────────────────────────────────────────
# 📦 Compilation de la bibliothèque Softadastra
# ────────────────────────────────────────────────────────────────

# 🔍 Recherche tous les fichiers .cpp dans tous les modules
file(GLOB_RECURSE SOFTADASTRA_SOURCES CONFIGURE_DEPENDS *.cpp)

# 📦 Crée une bibliothèque statique unique `softadastra`
add_library(softadastra STATIC ${SOFTADASTRA_SOURCES})

# 📥 Headers publics accessibles avec <softadastra/...>
target_include_directories(softadastra PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

# 🔗 Dépendances nécessaires
target_link_libraries(softadastra PUBLIC
    adastra             # dépend de la lib de base
    Threads::Threads
)

# 🧱 Standard C++17
target_compile_features(softadastra PUBLIC cxx_std_17)
