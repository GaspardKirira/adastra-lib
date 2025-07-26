# ────────────────────────────────────────────────────────────────
# 🧪 Integration Tests — folder `test/`
# ────────────────────────────────────────────────────────────────

# Look for all .cpp test files in test/integration/, test/performance/, etc.
file(GLOB_RECURSE TEST_SOURCES CONFIGURE_DEPENDS *.cpp)

# Create an executable for integration tests
add_executable(adastra_tests ${TEST_SOURCES})

# Include public headers (adastra & softadastra)
target_include_directories(adastra_tests PRIVATE
    ${CMAKE_SOURCE_DIR}/include
)

# Link required libraries
target_link_libraries(adastra_tests PRIVATE
    adastra
    softadastra
    Threads::Threads
    nlohmann_json::nlohmann_json
    gtest
    gtest_main
)

# C++17 Standard
target_compile_features(adastra_tests PRIVATE cxx_std_17)

# Add to CTest
add_test(NAME adastra_integration_tests COMMAND adastra_tests)
