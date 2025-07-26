# ────────────────────────────────────────────────────────────────
# 🧪 Adastra Unit Tests
# ────────────────────────────────────────────────────────────────

# Recursively find all .cpp test files
file(GLOB_RECURSE UNIT_TEST_SOURCES CONFIGURE_DEPENDS *.cpp)

# Create the unified test executable
add_executable(adastra_unittests ${UNIT_TEST_SOURCES})

# Include public headers
target_include_directories(adastra_unittests PRIVATE
    ${CMAKE_SOURCE_DIR}/include
)

# Link required libraries
target_link_libraries(adastra_unittests PRIVATE
    adastra
    softadastra
    Threads::Threads
    nlohmann_json::nlohmann_json
    gtest
    gtest_main
)

# Catch2 (optional)
if(ENABLE_CATCH2)
    target_link_libraries(adastra_unittests PRIVATE Catch2::Catch2WithMain)
endif()

# Declare the test for CTest
add_test(NAME adastra_all_tests COMMAND adastra_unittests)
