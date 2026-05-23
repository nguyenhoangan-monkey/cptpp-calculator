(lang dune 3.11)

(name cptpp_calculator)

(generate_opam_files true)

(maintainers "Nguyen Hoang An <nguyenhoangan1235@gmail.com>")

(authors "Nguyen Hoang An")

(license "BSD-3-Clause")

(homepage "https://github.com/nguyenhoangan-monkey/cptpp-calculator")

(bug_reports
 "https://github.com/nguyenhoangan-monkey/cptpp-calculator/issues")

(package
 (name cptpp_calculator)
 (synopsis "CPTPP rules of origin and tariffs calculator")
 (description
  "A compliance and regional value content rules engine for CPTPP tariffs evaluation.")
 (depends
  (ocaml
   (>= 5.0.0))
  csv
  zarith
  (alcotest :with-test))
 (url
  (src
   "https://github.com/nguyenhoangan-monkey/cptpp-calculator/releases/download/v0.1.3/cptpp_calculator-v0.1.3.tar.gz")
  (checksum
   "sha256=2660fe5ee9b07c07183e2acd8557c3c886a4cfeeb07a6dd6d4a86c58feff7c6e")))
