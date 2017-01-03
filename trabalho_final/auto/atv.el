(TeX-add-style-hook
 "atv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("abntex2" "		12pt" "					oneside" "				a4paper" "										english" "				french" "					spanish" "				brazil" "						")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8") ("todonotes" "colorinlistoftodos") ("backref" "brazilian" "hyperpageref") ("abntex2cite" "alf")))
   (add-to-list 'LaTeX-verbatim-environments-local "VerbatimOut")
   (add-to-list 'LaTeX-verbatim-environments-local "SaveVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "abntex2"
    "abntex210"
    "lmodern"
    "fontenc"
    "inputenc"
    "indentfirst"
    "color"
    "graphicx"
    "microtype"
    "float"
    "multicol"
    "multirow"
    "amsmath"
    "amsthm"
    "amssymb"
    "todonotes"
    "lipsum"
    "pgfplots"
    "verbatim"
    "blindtext"
    "enumitem"
    "listings"
    "fancyvrb"
    "hyperref"
    "relsize"
    "caption"
    "subcaption"
    "backref"
    "abntex2cite"
    "afterpage")
   (TeX-add-symbols
    "euler")
   (LaTeX-add-labels
    "filtros"
    "filtros2"
    "camadaconvolucional"
    "camadaconvolucional2"
    "resolução"
    "exemplo_conv"
    "eq_relus"
    "relus"
    "pooling"
    "topologiaMLP"
    "final"
    "typical_cnn"
    "fig:inputs"
    "tikz:mnist_cnn16"
    "fig:conv1_filtro"
    "fig:conv2_filtro"
    "fig:conv3_filtro"
    "fig:conv4_filtro"
    "fig:convs_filtros"
    "fig:numero_0"
    "fig:filtros2x2"
    "fig:camada_1"
    "fig:filtros12x12"
    "fig:camada_2"
    "fig:filtros8x8"
    "fig:camada_3"
    "fig:input1layermaxpooling2d1"
    "fig:filtros2x2_4"
    "fig:input1flatten"
    "fig:input1dense1"
    "fig:input1atv5"
    "fig:input1dense2"
    "fig:input1atv7")
   (LaTeX-add-bibliographies
    "bibliografia")
   (LaTeX-add-color-definecolors
    "blue"))
 :latex)

