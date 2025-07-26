# 📦 Changelog – AdastraLib

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/).

---

## [v0.1.0] - 2025-07-25

### 🎉 Initial Public Release

### ✨ Added

- Base project architecture (`lib`, `src`, `include`, `test`, `unittests`)
- Integration of `nlohmann/json`, `GoogleTest`, `Catch2` (optional)
- Modular CMake configuration with optional test builds
- Multi-platform optimized compilation (`-O3`, `-fsanitize`)
- Core modules:
  - `core`, `crypto`, `utils`, `tools`, `test_utils`, `config`
  - Application-level modules in `lib/softadastra/` (chat, blockchain, http, etc.)
- Complete test system (`adastra_tests`, `adastra_unittests`)
- Versioning scripts and Git automation (`Makefile`, Git tag)

---

## 📌 Coming Soon

### 🔧 In Progress

- Implementation of P2P encryption algorithms (`lib/adastra/network`)
- Per-module documentation generation (Doxygen/JsonDoc)
- Official publication on GitHub with detailed README and CI badge
