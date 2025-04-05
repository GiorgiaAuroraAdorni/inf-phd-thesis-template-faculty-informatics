(TeX-add-style-hook "usiinfthesis"
 (lambda ()
    (LaTeX-add-environments
     "abstract"
     "acknowledgements")
    (TeX-add-symbols
     '("place" 1)
     '("Day" 1)
     '("openepigraph" 2)
     '("dedication" 1)
     '("committeeMember" 2)
     '("committee" 1)
     '("programDirector" 1)
     '("specialization" 1)
     '("coadvisor" 1)
     '("Year" 1)
     '("Month" 1)
     '("advisor" 1)
     '("subtitle" 1)
     "item")
    (TeX-run-style-hooks
     "hypcap"
     "all"
     "hyperref"
     "unicode"
     "pdfpagelabels"
     "breaklinks"
     "natbib"
     "square"
     "amsmath"
     "url"
     "textcomp"
     "graphicx"
     "booktabs"
     "epigraph"
     "caption"
     "fancyhdr"
     "geometry"
     "sectsty"
     "beramono"
     "scaled"
     "mathdesign"
     "charter"
     "fontenc"
     "T1"
     "bk12"
     "book"
     "a4paper"
     "12pt"
     "twoside"
     "onecolumn"
     "final"
     "openright"
     "titlepage"
     "ifthen")))

