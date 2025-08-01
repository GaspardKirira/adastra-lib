# ────────────────────────────────────────────────────────────────
# 📦 Adastra demo or entrypoint compilation (main.cpp)
# This file does NOT redefine the `adastra` library!
# ────────────────────────────────────────────────────────────────

# 📄 Path to the main file (optional)
set(MAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)

if(EXISTS ${MAIN_FILE})
    add_executable(adastra_main ${MAIN_FILE})

    # 📥 Include headers
    target_include_directories(adastra_main PRIVATE
        ${CMAKE_SOURCE_DIR}/include
    )

    # 🔗 Link with core libraries
    target_link_libraries(adastra_main PRIVATE
        adastra
        softadastra
        Threads::Threads
        nlohmann_json::nlohmann_json
    )

    # 🧱 C++17
    target_compile_features(adastra_main PRIVATE cxx_std_17)
endif()
