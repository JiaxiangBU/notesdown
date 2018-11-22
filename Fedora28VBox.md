Fedora 28 minimal 在线安装
安装仓库自带的 R Pandoc Pandoc-citeproc

R 3.5.1
gcc 8.1.1
Pandoc 2.0.6
Pandoc-citeproc 0.12.2.5

# bookdown-test 自带的 demo

texlive-xetex
texlive-mathspec
texlive-framed
texlive-titling

# bookdown-chinese 额外需要的包

texlive-ctex
texlive-xecjk
texlive-fandol

bookdown:::bookdown_skeleton(path="bookdown-test")
bookdown::render_book('index.Rmd','all')

安装的 R 包

 [1] "backports"  "base64enc"  "bookdown"   "digest"     "evaluate"
 [6] "glue"       "highr"      "htmltools"  "jsonlite"   "knitr"
[11] "magrittr"   "markdown"   "mime"       "Rcpp"       "rmarkdown"
[16] "rprojroot"  "stringi"    "stringr"    "tinytex"    "xfun"
[21] "yaml"       "base"       "boot"       "class"      "cluster"
[26] "codetools"  "compiler"   "datasets"   "foreign"    "graphics"
[31] "grDevices"  "grid"       "KernSmooth" "lattice"    "MASS"
[36] "Matrix"     "methods"    "mgcv"       "nlme"       "nnet"
[41] "parallel"   "rpart"      "spatial"    "splines"    "stats"
[46] "stats4"     "survival"   "tcltk"      "tools"      "utils"

xiangyun cloud

root 账户没有设置


zsh wget git gnugpg git-lfs

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
