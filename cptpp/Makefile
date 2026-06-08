.PHONY: all switch setup build clean

all: build

switch:
	@echo "==> Setting up OxCaml 5.2.0+ox switch..."
	@if ! opam switch list | grep -q "5.2.0+ox"; then \
		opam repo add ox git+https://github.com/oxcaml/opam-repository.git --dont-select || true; \
		opam switch create 5.2.0+ox --repos ox,default || true; \
	else \
		echo "OxCaml switch already exists."; \
	fi
	@echo "==> Switch ready. Run 'eval \$$(opam env --switch=5.2.0+ox)' in your terminal to activate it."

setup:
	@echo "==> Installing ecosystem dependencies..."
	@dune build cptpp.opam 
	@opam install . --deps-only --with-test -y
	@dune build @install --auto-promote

build:
	@echo "==> Building OCaml driver..."
	@dune build lib/main.exe

clean:
	@echo "==> Scrubbing build artifacts..."
	@dune clean
	@rm -rf _build

# Catch-all helper for mistyped commands
%:
	@echo "Error: Unknown command '$@'\n"
	@echo "Available commands: switch, setup, build, clean"
	@exit 1