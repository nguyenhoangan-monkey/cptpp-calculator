.PHONY: all build clean

all: build

build:
	dune build
	opam install . --deps-only --with-test
	dune build

clean:
	dune clean