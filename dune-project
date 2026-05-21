(lang dune 3.11)

(name cptpp_calculator)
(generate_opam_files true)

(maintainer "Nguyen Hoang An <nguyenhoangan1235@gmail.com>")
(authors "Nguyen Hoang An")
(license "BSD-3-Clause")
(homepage "https://github.com/nguyenhoangan-monkey/cptpp-calculator")
(bug_reports "https://github.com/nguyenhoangan-monkey/cptpp-calculator/issues")

(package
 (name cptpp_calculator)
 (synopsis "CPTPP rules of origin and tariffs calculator")
 (description "A compliance and regional value content rules engine for CPTPP tariffs evaluation.")
 (depends
  (ocaml (>= 5.0.0))
  (dune (>= 3.11))
  (yojson (>= 2.1.0))              
  (ppx_deriving_yojson (>= 3.7.0)) 
  (alcotest :with-test)
  (qcheck :with-test)))