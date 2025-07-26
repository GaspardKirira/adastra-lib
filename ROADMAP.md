# 🛣️ Roadmap — AdastraLib & Softadastra

This document outlines the development roadmap for the modular C++ library `adastra_lib` and its ecosystem `softadastra`.

---

## 📌 General Goals

- [x] Make `adastra_lib` fully independent from SoftadastraBox
- [x] Compile `adastra` and `softadastra` as two distinct libraries
- [x] Add initial modules: box, pay, chat, map, commerce
- [x] Integrate GoogleTest for unit and integration testing
- [x] Add README, NOTES, and clean CMake structure

---

## 🔄 Module Progress

### 🔹 `adastra`

| Module          | Status     | Tests      | Notes                          |
| --------------- | ---------- | ---------- | ------------------------------ |
| utils           | ✅ Done    | ⏳ To do   | String, path, json helpers     |
| core/algorithms | ✅ Done    | ✅ Ongoing | Binary search, mergeSort, etc. |
| crypto          | ⏳ Ongoing | ❌ Not yet | SHA256, RSA, AES               |
| tools           | ✅ Done    | ❌ Not yet | Logger, IDGenerator            |
| storage         | ✅ Done    | ❌ Not yet | File system module             |

### 🔹 `softadastra`

| Module        | Status     | `init()` | Purpose                            |
| ------------- | ---------- | -------- | ---------------------------------- |
| box           | ✅ Ready   | ✅ Yes   | Decentralized file storage         |
| pay           | ✅ Ready   | ✅ Yes   | Payments (MTN, Airtel, crypto)     |
| chat          | ✅ Ready   | ✅ Yes   | Real-time chat system              |
| map           | ✅ Ready   | ✅ Yes   | Maps and geolocation               |
| commerce      | ✅ Ready   | ✅ Yes   | E-commerce (products, shops, etc.) |
| rh, ai, forum | ❌ Planned | ❌ No    | Upcoming modules                   |

---

## 🧪 Tests & Quality

- [x] GoogleTest integration
- [x] Add test for `binarySearch`, `countingSort`, `fibonacci`
- [x] Global integration test for `softadastra` modules
- [ ] Add basic benchmarks (performance/test)
- [ ] Enable code coverage (GCOV, lcov)

---

## 📖 Documentation

- [ ] Generate Doxygen docs in `docs/html/`
- [ ] Document every exported function
- [ ] Create usage examples in `main.cpp`

---

## 🔐 Security

- [ ] Validate memory and buffer access
- [ ] Add valgrind memory tests
- [ ] Review crypto primitives usage (if active)

---

## 📆 Next Steps (Current Week)

- [ ] Add modules: `forum`, `rh`, `livechat`
- [ ] Create `ai` module (face detection or NLP)
- [ ] Unit tests for `mergeSort()` and `combination()`
- [ ] Add dynamic plugin system for `softadastra`

---

## ✍️ Author

Project by **Softadastra** — 2025  
https://softadastra.com
