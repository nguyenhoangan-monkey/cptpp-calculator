# Paths
RUST_DIR   = lib/rust-middleend
RUST_OUT   = $(RUST_DIR)/target/release
READER_DIR = lib/ocaml-backend/reader

.PHONY: all setup build clean build-rust

all: build

build-rust:
	@echo "==> Compiling Rust frontend..."
	@cargo build --manifest-path $(RUST_DIR)/Cargo.toml --release
	@mkdir -p $(READER_DIR)
	@cp $(RUST_OUT)/librust_frontend.a $(READER_DIR)/
	@cp $(RUST_OUT)/librust_frontend.dylib $(READER_DIR)/dllrust_frontend.so 2>/dev/null || \
	 cp $(RUST_OUT)/librust_frontend.so $(READER_DIR)/dllrust_frontend.so

setup: build-rust
	@echo "==> Installing ecosystem dependencies..."
	@dune build *.opam && opam install . --deps-only -y
	@dune build @install --auto-promote

build: build-rust
	@echo "==> Building OCaml driver..."
	@dune build lib/driver/cli.exe

clean:
	@echo "==> Scrubbing build artifacts..."
	@dune clean
	@rm -rf $(RUST_DIR)/target $(READER_DIR)/librust_frontend.a $(READER_DIR)/dllrust_frontend.so

# Catch-all helper for mistyped commands
%:
	@echo "Error: Unknown command '$@'\n"
	@echo "Available commands: setup, build, clean"
	@exit 1