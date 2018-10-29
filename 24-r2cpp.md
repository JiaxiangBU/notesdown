
# 性能提升 {#performance}

- [C++ 编程风格指南](http://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines) 
- <https://github.com/isocpp/CppCoreGuidelines>

- 如何充分利用 Rcpp 包
- 设个目标，锻炼一下编码能力，关于统计计算和可视化尽可能提供两个方案，至少包含基础 R 包的实现


```r
Pkgs <- sapply(list.files(R.home("library")), function(x)
  packageDescription(pkg = x, fields = "Priority"))
names(Pkgs[Pkgs == "base" & !is.na(Pkgs)])
#>  [1] "base"      "compiler"  "datasets"  "graphics"  "grDevices"
#>  [6] "grid"      "methods"   "parallel"  "splines"   "stats"    
#> [11] "stats4"    "tcltk"     "tools"     "utils"
```

计算程序运行时间


```r
.proctime00 <- proc.time()
s <- 0
for (i in seq(1000)) {
  s <- s + i
}
proc.time() - .proctime00
#>    user  system elapsed 
#>   0.008   0.000   0.008
```

## Rcpp



### RcppOctave

混合编程


```r
devtools::install_github('renozao/RcppOctave')
#> Downloading GitHub repo renozao/RcppOctave@master
#> bibtex   (NA -> 0.4.2) [CRAN]
#> pkgmaker (NA -> 0.27 ) [CRAN]
#> registry (NA -> 0.5  ) [CRAN]
#> Installing 3 packages: bibtex, pkgmaker, registry
#> Installing packages into '/home/travis/R/Library'
#> (as 'lib' is unspecified)
#>      checking for file ‘/tmp/RtmpQ3xKvt/remotes5046f8e8975/renozao-RcppOctave-fcf4d02/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/RtmpQ3xKvt/remotes5046f8e8975/renozao-RcppOctave-fcf4d02/DESCRIPTION’
#>   ─  preparing ‘RcppOctave’:
#>      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>   ─  cleaning src
#> ─  running ‘cleanup’
#>   ─  installing the package to process help pages
#>   ─  cleaning src (20.8s)
#>   ─  running ‘cleanup’
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘RcppOctave_0.19.tar.gz’
#>      
#> 
#> Installing package into '/home/travis/R/Library'
#> (as 'lib' is unspecified)
```


### RcppGSL


### RcppArmadillo

### RcppParallel

### RcppNumerical


### RcppAlgos



```r
devtools::session_info(pkgs = c("Rcpp", "RcppOctave"))
#> ─ Session info ──────────────────────────────────────────────────────────
#>  setting  value                       
#>  version  R version 3.5.1 (2017-01-27)
#>  os       Ubuntu 14.04.5 LTS          
#>  system   x86_64, linux-gnu           
#>  ui       X11                         
#>  language (EN)                        
#>  collate  en_US.UTF-8                 
#>  ctype    en_US.UTF-8                 
#>  tz       UTC                         
#>  date     2018-10-29                  
#> 
#> ─ Packages ──────────────────────────────────────────────────────────────
#>  package    * version date       lib source                             
#>  bibtex       0.4.2   2017-06-30 [1] CRAN (R 3.5.1)                     
#>  codetools    0.2-15  2016-10-05 [3] CRAN (R 3.5.1)                     
#>  digest       0.6.18  2018-10-10 [1] CRAN (R 3.5.1)                     
#>  glue         1.3.0   2018-07-17 [1] CRAN (R 3.5.1)                     
#>  magrittr   * 1.5     2014-11-22 [1] CRAN (R 3.5.1)                     
#>  pkgmaker     0.27    2018-05-25 [1] CRAN (R 3.5.1)                     
#>  Rcpp         0.12.19 2018-10-01 [1] CRAN (R 3.5.1)                     
#>  RcppOctave   0.19    2018-10-29 [1] Github (renozao/RcppOctave@fcf4d02)
#>  registry     0.5     2017-12-03 [1] CRAN (R 3.5.1)                     
#>  stringi      1.2.4   2018-07-20 [1] CRAN (R 3.5.1)                     
#>  stringr      1.3.1   2018-05-10 [1] CRAN (R 3.5.1)                     
#>  withr        2.1.2   2018-03-15 [1] CRAN (R 3.5.1)                     
#>  xtable       1.8-3   2018-08-29 [1] CRAN (R 3.5.1)                     
#> 
#> [1] /home/travis/R/Library
#> [2] /usr/local/lib/R/site-library
#> [3] /home/travis/R-bin/lib/R/library
```

