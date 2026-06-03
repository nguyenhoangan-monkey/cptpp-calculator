# SPDX-License-Identifier: GPL-3.0-only
# Copyright (C) 2026 Nguyễn Hoàng An

TARGETS = parse clean

.PHONY: all help $(TARGETS)

all:
	make parse

help:
	@echo "Available make commands:"
	@echo "------------------------"
	@for target in $(TARGETS); do \
		echo "  make $$target"; \
	done

parse:
	./cptpp -emit-ml scripts/parse_hs.py data/harmonized_system/hs_world_2022/harmonized-system.csv -o ir/hs_world_2022.ml

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +