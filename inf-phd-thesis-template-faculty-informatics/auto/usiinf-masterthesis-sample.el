(TeX-add-style-hook "usiinf-masterthesis-sample"
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
     "usiinfthesis"
     "mscthesis")))

