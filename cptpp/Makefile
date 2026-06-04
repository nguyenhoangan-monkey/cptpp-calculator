TARGETS = setup build install parse clean

.PHONY: all help $(TARGETS)

all: build

help:
	@echo "Available make commands:"
	@echo "------------------------"
	@for target in $(TARGETS); do \
		echo "  make $$target"; \
	done

setup:
	opam switch create . ocaml-base-compiler.5.4.1 --no-install --with-test -y || opam switch link .
	eval $$(opam env) && opam install ./lib/codegen --deps-only -y
	python3 -m pip install --upgrade pip --break-system-packages

build:
	eval $$(opam env) && dune build

install: build
	python3 -m pip install -e . --break-system-packages

parse:
	cptpp -emit-ml lib/parser/parse_hs.py examples/2-csv/harmonized-system.csv -o examples/3-ml/hs_world_2022.ml

clean:
	eval $$(opam env) && dune clean
	find . -type d -name "__pycache__" -exec rm -rf {} +
	rm -rf build/ dist/ *.egg-info

%::
	@echo "Error: '$@' is not a valid make command."
	@echo ""
	@$(MAKE) help