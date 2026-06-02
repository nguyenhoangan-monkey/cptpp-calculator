.PHONY: all build clean sync test

all: build

build:
	dune build
	opam install . --deps-only --with-test
	dune build

clean:
	dune clean

sync:
	chmod +x .github/sync_data.sh
	./.github/sync_data.sh

test:
	dune runtest