.PHONY: parse clean

# Default target runs the python module pipeline
parse:
	python3 -m scripts.parse

# Optional cleanup target to remove python cache files if needed
clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +