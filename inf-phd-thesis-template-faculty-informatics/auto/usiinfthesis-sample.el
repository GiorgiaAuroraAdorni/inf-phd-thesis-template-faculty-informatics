(TeX-add-style-hook "usiinfthesis-sample"
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
     "tikz"
     "fixme"
     "draft"
     "lipsum"
     "latex2e"
     "usiinfthesis10"
     "usiinfthesis")))

