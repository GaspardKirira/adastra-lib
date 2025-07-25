cmake_minimum_required(VERSION 3.14)

# ────────────────────────────────────────────────────────────────
# 🛠️  Project Metadata
# ────────────────────────────────────────────────────────────────
project(adastra_lib 
    VERSION 0.1 
    LANGUAGES CXX
    DESCRIPTION "Adastra core C++ library + Softadastra ecosystem"
)

# ────────────────────────────────────────────────────────────────
# 🧱 C++ Standard and Compiler Flags
# ────────────────────────────────────────────────────────────────
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_compile_options(-Wall -Wextra -Wpedantic -g)

option(ENABLE_OPTIMIZATION "Enable -O3 optimization" OFF)
if(ENABLE_OPTIMIZATION)
    add_compile_options(-O3)
endif()

option(ENABLE_SANITIZERS "Enable address and undefined behavior sanitizers" OFF)
if(ENABLE_SANITIZERS)
    add_compile_options(-fsanitize=address,undefined)
    add_link_options(-fsanitize=address,undefined)
endif()

# ────────────────────────────────────────────────────────────────
# 📁 Output Directories
# ────────────────────────────────────────────────────────────────
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# ────────────────────────────────────────────────────────────────
# 🔗 Required Dependencies
# ────────────────────────────────────────────────────────────────
find_package(Threads REQUIRED)
find_package(SQLite3 REQUIRED)
find_package(OpenSSL REQUIRED)

# ────────────────────────────────────────────────────────────────
# 📦 Third-party: JSON (nlohmann)
# ────────────────────────────────────────────────────────────────
include(FetchContent)

FetchContent_Declare(
    nlohmann_json
    GIT_REPOSITORY https://github.com/nlohmann/json.git
    GIT_TAG v3.11.3
    GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(nlohmann_json)

# ────────────────────────────────────────────────────────────────
# 🧪 Tests: GoogleTest + Catch2 (optionnels)
# ────────────────────────────────────────────────────────────────
option(BUILD_TESTS "Enable unit and integration tests (OFF in production)" OFF)

if(BUILD_TESTS)
    message(STATUS "🔬 BUILD_TESTS is ON: Tests will be compiled.")

    enable_testing()

    # GoogleTest
    FetchContent_Declare(
        googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG release-1.12.1
        GIT_SHALLOW TRUE
    )
    set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
    FetchContent_MakeAvailable(googletest)

    # Catch2 (optionnel)
    option(ENABLE_CATCH2 "Enable Catch2 unit testing framework" OFF)
    if(ENABLE_CATCH2)
        FetchContent_Declare(
            catch2
            GIT_REPOSITORY https://github.com/catchorg/Catch2.git
            GIT_TAG v3.5.4
            GIT_SHALLOW TRUE
        )
        FetchContent_MakeAvailable(catch2)
    endif()
else()
    message(STATUS "🚫 BUILD_TESTS is OFF: Tests will NOT be compiled.")
endif()

# ────────────────────────────────────────────────────────────────
# 📂 Subdirectories
# ────────────────────────────────────────────────────────────────
add_subdirectory(lib)
add_subdirectory(src)

if(BUILD_TESTS)
    if(EXISTS ${CMAKE_SOURCE_DIR}/test/CMakeLists.txt)
        add_subdirectory(test)
    endif()
    if(EXISTS ${CMAKE_SOURCE_DIR}/unittests/CMakeLists.txt)
        add_subdirectory(unittests)
    endif()
endif()

# ────────────────────────────────────────────────────────────────
# 📥 Global Include Directories
# ────────────────────────────────────────────────────────────────
include_directories(${CMAKE_SOURCE_DIR}/include)

# ────────────────────────────────────────────────────────────────
# 🚀 Installation Configuration
# ────────────────────────────────────────────────────────────────
install(DIRECTORY include/ DESTINATION include)
