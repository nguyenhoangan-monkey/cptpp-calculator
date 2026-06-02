## Notes
this is for trees: `tree -I "_build|_opam|*.install|dune.lock"`

first I need to convert json of tariffs.

before commit:
* `dune clean`
* `dune build cptpp-parser.opam` - for .opam to be happy
* `opam install . --deps-only --with-test` - install everything
* `dune build` - actually building