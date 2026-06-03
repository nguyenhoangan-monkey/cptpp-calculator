# Variables
SWITCH_NAME = 5.4.1+afl
DUNE = opam exec --switch=$(SWITCH_NAME) -- dune
FUZZ = ./_build/default/test/fuzz.exe

export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1
export AFL_SKIP_CPUFREQ=1
export AFL_POST_PROCESS_KEEP_ORIGINAL=1

TARGETS = init setup build seed fuzz dump kill clean

.PHONY: all help $(TARGETS)

all: build

help:
	@echo "Available make commands:"
	@echo "------------------------"
	@echo "  make help  - Shows all available commands"
	@echo "  make init  - Creates the '$(SWITCH_NAME)' switch and resolves package dependencies"
	@echo "  make setup - Runs the environment setup (require sudo)"
	@echo "  make seed  - Generate seed from /test/seeds.txt"
	@echo "  make build - Compiles the fuzzer"
	@echo "  make fuzz  - Compiles and starts the fuzzer on 2 background cores"
	@echo "  make dump  - Collects all the queue cases into an output.txt file"
	@echo "  make kill  - Stops the background fuzzers but keeps your data safe"
	@echo "  make clean - Stops everything, wipes the results, and cleans up the repo"
%:
	@echo "Error: Unknown command '$@'\n"
	@$(MAKE) -s help
	@exit 1

SWITCH_NAME = 5.4.1+afl
DUNE        = opam exec --switch=$(SWITCH_NAME) -- dune
OPAM        = opam --switch=$(SWITCH_NAME) --cli=2.1

init:
	@echo "Checking for OCaml AFL switch..."
	@$(OPAM) switch show >/dev/null 2>&1 || opam switch create $(SWITCH_NAME) --packages=ocaml-variants.5.4.1+options,ocaml-option-afl
	@echo "Installing dependencies & syncing layouts..."
	@$(OPAM) install . --deps-only --with-test -y

setup:
	@echo "Configuring core system overrides..."
	@echo "Please enter sudo password to adjust system core dumps and CPU scaling flags:"
	sudo afl-system-config

build:
	$(DUNE) build @install --auto-promote
	$(DUNE) build test/fuzz.exe --instrument-with afl

seed:
	@echo "Purging and regenerating pristine AFL input seeds..."
	$(DUNE) exec test/seed_generator.exe

fuzz: build
	@mkdir -p input
	afl-fuzz -P explore -x test/hs_code.dict -i input -o output -S cpu2 $(FUZZ) > /dev/null 2>&1 & \
	sleep 1 
	afl-fuzz -x test/hs_code.dict -i input -o output -M main $(FUZZ)

dump:
	@echo "Dumping and validating test cases..."
	@rm -f output_pass.txt output_fail.txt
	$(DUNE) exec test/check_queue.exe
	@echo "Done. Results split into output_pass.txt and output_fail.txt"

kill:
	@echo "Killing any lingering afl-fuzz instances..."
	-pkill -f afl-fuzz

clean:
	@echo "Cleaning workspace artifacts..."
	rm -rf output
	$(DUNE) clean