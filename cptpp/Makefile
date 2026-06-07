# Paths
READER_DIR = lib/ocaml-backend/reader

.PHONY: all setup build clean

all: build

setup:
	@echo "==> Installing ecosystem dependencies..."
	@dune build cptpp.opam 
	@opam install . --deps-only --with-test -y
	@dune build @install --auto-promote

build:
	@echo "==> Building OCaml driver..."
	@dune build lib/driver/orchestrator.exe

clean:
	@echo "==> Scrubbing build artifacts..."
	@dune clean
	@rm -rf _build

# Catch-all helper for mistyped commands
%:
	@echo "Error: Unknown command '$@'\n"
	@echo "Available commands: setup, build, clean"
	@exit 1