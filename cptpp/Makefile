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
	python3 -m scripts.parse

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +