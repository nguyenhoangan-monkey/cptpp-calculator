.PHONY: all setup build clean

all: build

setup:
	dune build cptpp.opam
	opam install . --deps-only --with-test -y

build:
	dune build lib/experiments.exe --auto-promote

clean:
	dune clean

%:
	@echo "Error: Unknown command '$@'\n"
	@echo "Available commands: setup, build, clean"
	@exit 1
