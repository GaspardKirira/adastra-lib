# 🚀 AdastraLib

**Modular C++ library** designed to build high-performance, robust, and scalable systems.  
It powers the **Softadastra** ecosystem: decentralized platform, e-commerce, chat, payments, P2P storage, and more.

---

## 📂 Project Structure

```
adastra_lib/
├── include/ # Public header files (adastra/ and softadastra/)
├── lib/ # Source code of modular libraries
├── src/ # Application entry point (main.cpp)
├── test/ # Integration tests (GoogleTest)
├── unittests/ # Modular unit tests
├── config/, architecture/ → Configuration and technical documentation
```

---

## 🔧 Compiled Libraries

| Name          | Description                                       |
| ------------- | ------------------------------------------------- |
| `adastra`     | Core modules: `utils`, `crypto`, `core`, etc.     |
| `softadastra` | Ecosystem-specific modules (chat, pay, box, etc.) |

---

## ⚙️ Build Instructions

# Build steps

mkdir build && cd build
cmake .. -DBUILD_TESTS=ON
make
-DBUILD_TESTS=ON
make

```

🔹 Disable tests for production build:

cmake .. -DBUILD_TESTS=OFF

```

🔹 Additional options:

-DENABLE_OPTIMIZATION=ON → Enables -O3 optimizations

-DENABLE_SANITIZERS=ON → Enables address/UB sanitizers (-fsanitize)

---

🧪 Running Tests

# Unit tests (Catch2 / GoogleTest)

./bin/adastra_unittests

# Integration tests (GoogleTest)

./bin/adastra_tests

---

## 📥 Modules Softadastra inclus

| Module     | Description                      |
| ---------- | -------------------------------- |
| `box`      | Decentralized P2P storage        |
| `commerce` | E-commerce features              |
| `pay`      | Payment system, wallet, security |
| `chat`     | Real-time messaging system       |
| `map`      | Maps and geolocation tools       |
| `pme`      | Tools for small businesses       |
| `rh`       | User and permission management   |

---

## 🧱 Dependencies

- [nlohmann/json](https://github.com/nlohmann/json)
- [GoogleTest](https://github.com/google/googletest)
- [Catch2 (optionnel)](https://github.com/catchorg/Catch2)
- SQLite3, OpenSSL, Threads (système)

---

## 🔖 Versions

This project follows [Semantic Versioning](https://semver.org/lang/fr/).
See [CHANGELOG.md](./CHANGELOG.md) pour voir l’historique.

---

## 🧑‍💻 Author

**Softadastra**
https://softadastra.com
© 2025. All rights reserved.

---

## 📄 License

MIT or Softadastra-specific license (to be defined in LICENSE).

```

```
