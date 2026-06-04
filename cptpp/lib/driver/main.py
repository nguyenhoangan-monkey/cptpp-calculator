#!/usr/bin/env python3
"""
 SPDX-License-Identifier: GPL-3.0-only
 Copyright (C) 2026 Nguyễn Hoàng An
"""

import os
import sys
import argparse
import subprocess

def main():
    #
    # STEP 1: read the argv
    #
    parser = argparse.ArgumentParser(
        description="CPTPP front-end compiler for data",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""Examples:
  ./cptpp -E lib/parse/csv_cleaner.py data/raw.csv -o data/clean.csv
  ./cptpp -emit-ml lib/parse/parse_hs.py data/clean.csv -o lib/codegen/hs.ml
  ./cptpp -c lib/codegen/serialize_hs.exe lib/codegen/hs.ml -o bin/hs.bin
        """
    )
    
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument("-E", action="store_true", 
                        help="Run lexing/preprocessing source transformations")
    group.add_argument("-emit-ml", action="store_true", 
                        help="Parse source structures and lower to an OCaml IR module")
    group.add_argument("-c", action="store_true", 
                        help="Compile/serialize the OCaml module into machine object files or bytecode")

    parser.add_argument("processor", help="Path to the script (.py) or binary (.exe) performing the phase")
    parser.add_argument("input_file", help="Path to the source input file")
    parser.add_argument("-o", required=True, help="Path to the targeted output file")

    args = parser.parse_args()

    if not os.path.exists(args.processor):
        print(f"cptpp: error: driver subsystem or script not found: '{args.processor}'", file=sys.stderr)
        sys.exit(1)
    if not os.path.exists(args.input_file):
        print(f"cptpp: error: source input file not found: '{args.input_file}'", file=sys.stderr)
        sys

    #
    # Step 2: actually parsing
    #
    output_dir = os.path.dirname(args.o)
    if output_dir and not os.path.exists(output_dir):
        os.makedirs(output_dir, exist_ok=True)

    if args.E:
        phase_msg = "Preprocessing / Lexing"
    elif getattr(args, 'emit_ml'):
        phase_msg = "Syntactic/Semantic Parsing to OCaml AST"
    else:
        phase_msg = "Backend Code Generation / Serialization"

    print(f"cptpp: [{phase_msg}] Executing via {args.processor}...")

    try:
        if args.processor.endswith(".py"):
            cmd = [sys.executable, args.processor, args.input_file, "-o", args.o]
        else:
            cmd = [args.processor, args.input_file, "-o", args.o]

        subprocess.run(cmd, check=True)
        print(f"cptpp: phase successful -> emitted target artifact: {args.o}")

    except subprocess.CalledProcessError:
        print(f"cptpp: error: compilation/parsing phase aborted inside sub-process {args.processor}", file=sys.stderr)
        sys.exit(1)
    except PermissionError:
        print(f"cptpp: error: permission denied executing '{args.processor}'", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()