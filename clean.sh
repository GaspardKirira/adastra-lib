#!/bin/bash

echo "🧹 Nettoyage des fichiers de build..."

rm -rf build
rm -rf CMakeCache.txt CMakeFiles/ Makefile cmake_install.cmake

echo "✅ Dossier de build supprimé."
