(lang dune 3.11)

(name cptpp_calculator)
(generate_opam_files true)

(package
 (name cptpp_calculator)
 (synopsis "CPTPP rules of origin and tariffs calculator")
 (depends
  (ocaml (>= 5.0.0))
  (dune (>= 3.11))
  (yojson (>= 2.1.0))              
  (alcotest :with-test)
  (qcheck :with-test)
 )
)