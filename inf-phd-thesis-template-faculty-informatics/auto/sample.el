(TeX-add-style-hook "sample"
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
     "hypcap"
     "all"
     "hyperref"
     "pdftex"
     "unicode"
     "pdfpagelabels"
     "breaklinks"
     "natbib"
     "square"
     "listings"
     "amsmath"
     "lipsum"
     "latex2e"
     "USIINFthesis10"
     "USIINFthesis")))

