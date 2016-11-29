(TeX-add-style-hook
 "apresentacao"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1")))
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer11"
    "inputenc"
    "fontenc"
    "lipsum"))
 :latex)

