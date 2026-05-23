(lang dune 3.23)

(name cptpp_calculator)

(generate_opam_files true)

(using rocq 0.11)

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
   (>= 5.4.0))
  csv
  zarith
  (alcotest :with-test)))
