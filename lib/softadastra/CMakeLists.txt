# ────────────────────────────────────────────────────────────────
# 📦 Softadastra Library Compilation
# ────────────────────────────────────────────────────────────────

# 🔍 Find all .cpp files within all submodules
file(GLOB_RECURSE SOFTADASTRA_SOURCES CONFIGURE_DEPENDS *.cpp)

# 📦 Create a single static library named `softadastra`
add_library(softadastra STATIC ${SOFTADASTRA_SOURCES})

# 📥 Public headers accessible with <softadastra/...>
target_include_directories(softadastra PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

# 🔗 Required dependencies
target_link_libraries(softadastra PUBLIC
    adastra             # depends on the base library
    Threads::Threads
)

# 🧱 Use C++17 standard
target_compile_features(softadastra PUBLIC cxx_std_17)
