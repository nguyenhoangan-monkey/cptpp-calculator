# SPDX-License-Identifier: GPL-3.0-only
# Copyright (C) 2026 Nguyễn Hoàng An

.PHONY: all build clean sync test setup

all: build

setup:
	dune build @install --auto-promote
	opam install . --deps-only --with-test

build:
	dune build -p cptpp-calc

clean:
	dune clean

sync:
	chmod +x .github/sync_data.sh
	./.github/sync_data.sh

test:
	dune runtest
