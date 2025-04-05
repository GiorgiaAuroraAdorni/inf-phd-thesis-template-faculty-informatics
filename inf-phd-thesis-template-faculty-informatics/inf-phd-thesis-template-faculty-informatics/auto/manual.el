(TeX-add-style-hook "manual"
 (lambda ()
    (LaTeX-add-bibliographies
     "biblio")
    (LaTeX-add-labels
     "tab:frontmatter"
     "tab:packages")
    (TeX-run-style-hooks
     "USIINFthesis10"
     "USIINFthesis"
     "url"
     "booktabs"
     "latex2e"
     "art10"
     "article")))

