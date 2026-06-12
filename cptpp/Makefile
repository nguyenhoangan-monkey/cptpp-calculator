.PHONY: all switch setup build clean

all: build

switch:
	@echo "==> Updating opam repositories..."
	opam update --all

	@echo "==> Ensuring any old or broken 5.2.0+ox switch is removed..."
	@if opam switch list | grep -q "5.2.0+ox"; then \
		opam switch remove 5.2.0+ox -y; \
	fi

	@echo "==> Installing dune..."
	opam install dune --switch=5.2.0+ox -y

	@echo "==> Creating OxCaml 5.2.0+ox switch (this may take some time)..."
	opam switch create 5.2.0+ox --repos ox=git+https://github.com/oxcaml/opam-repository.git,default

	@echo ""
	@echo "===================================================================="
	@echo "==> Switch ready! To activate it in your current terminal, run:"
	@echo "    eval \$$(opam env --switch=5.2.0+ox)"
	@echo "===================================================================="

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
