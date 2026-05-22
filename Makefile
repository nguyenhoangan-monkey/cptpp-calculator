.PHONY: all init-data build

all: init-data build

# Automatically pull pristine data if the folder doesn't exist
init-data:
	@if [ ! -d "data" ]; then \
		echo "Fetching data from nguyenhoangan-monkey/cptpp-parser..."; \
		git clone --depth 1 https://github.com/nguyenhoangan-monkey/cptpp-parser.git temp-parser; \
		mv temp-parser/data ./data; \
		rm -rf temp-parser; \
	fi

build:
	dune build