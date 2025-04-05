(TeX-add-style-hook "usiinfthesis-sample.tex"
 (lambda ()
    (LaTeX-add-bibliographies
     "biblio")
    (LaTeX-add-labels
     "sort"
     "begin-sig"
     "end-sig"
     "begin-axioms"
     "begin-amount"
     "end-amount"
     "begin-delete"
     "end-axioms")
    (TeX-run-style-hooks
     "listings"
     "lipsum"
     "latex2e"
     "usiinfthesis10"
     "usiinfthesis")))

