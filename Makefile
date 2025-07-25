# Fichier : Makefile

VERSION ?= v0.1.0
BRANCH_DEV = dev
BRANCH_MAIN = main

.PHONY: help release commit push merge tag test

help:
	@echo "Commandes disponibles :"
	@echo "  make commit        - Ajouter et commiter tous les fichiers (dev)"
	@echo "  make push          - Pousser la branche dev"
	@echo "  make merge         - Fusionner dev -> main"
	@echo "  make tag VERSION=vX.Y.Z - Créer un tag git (par défaut: $(VERSION))"
	@echo "  make release VERSION=vX.Y.Z - Commit + Push + Merge + Tag"
	@echo "  make test          - Compiler et exécuter les tests"

commit:
	git checkout $(BRANCH_DEV)
	git add .
	git commit -m "🚀 Update: commit automatique via Makefile"

push:
	git push origin $(BRANCH_DEV)

merge:
	git checkout $(BRANCH_MAIN)
	git merge --no-ff $(BRANCH_DEV)
	git push origin $(BRANCH_MAIN)

tag:
	git tag $(VERSION)
	git push origin $(VERSION)

release:
	make commit
	make push
	make merge
	make tag VERSION=$(VERSION)

test:
	cd build && ctest --output-on-failure
