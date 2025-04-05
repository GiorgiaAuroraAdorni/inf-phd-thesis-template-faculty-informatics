(TeX-add-style-hook "usiinfthesis-manual.tex"
 (lambda ()
    (LaTeX-add-bibliographies
     "biblio")
    (LaTeX-add-labels
     "tab:frontmatter"
     "tab:packages")
    (TeX-add-symbols
     "clsusiinf")
    (TeX-run-style-hooks
     "usiinfthesis10"
     "usiinfthesis"
     "array"
     "xspace"
     "url"
     "booktabs"
     "latex2e"
     "art10"
     "article")))

