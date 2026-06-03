ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
export TYPST_FONT_PATHS := $(ROOT_DIR)/include/fonts

SRC_FILES := $(shell find examples -name "template.typ")
PDF_FILES := $(SRC_FILES:.typ=.pdf)

.PHONY: all build clean

all: build

build: $(PDF_FILES)

%/template.pdf: %/template.typ
	typst compile $< $@

clean:
	rm -f $(PDF_FILES)
	