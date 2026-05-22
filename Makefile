.PHONY: all init-data build

all: init-data build

# Native Git submodule initialization
init-data:
	@if [ ! -d "data/.git" ]; then \
		echo "Initializing data submodule..."; \
		git submodule update --init --recursive; \
	fi

build:
	dune build
	opam install . --deps-only --with-test
	dune build