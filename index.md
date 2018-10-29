
---
title: "notesdown"
author: ["Xiangyun Huang", "The Others"]
date: "2018-10-29 13:23:15 CST"
site: bookdown::bookdown_site
geometry: margin=1.18in
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
lof: yes
lot: yes
graphics: yes
tables: yes
link-citations: yes
links-as-notes: no
colorlinks: yes
toccolor: magenta
mathspec: yes
classoption: "hyperref, a4paper, UTF8, zihao = -4, linespread = 1.3, table"
description: "Some notes about R and other open souce softwares, such as Pandoc, LaTeX, Inkscape, Ghostscript, Git, Stan, Octave and Python."
url: 'https\://notesdown.netlify.com/'
github-repo: "xiangyunhuang/notesdown"
cover-image: "images/dragon.png"
apple-touch-icon: "images/dragon.png"
apple-touch-icon-size: 120
favicon: "favicon.ico"
---



# 前言 {#preface .unnumbered}



> 荃者所以在鱼，得鱼而忘荃；蹄者所以在兔；得兔而忘蹄；言者所以在意，得意而忘言。吾安得夫忘言之人而与之言哉！

\BeginKnitrBlock{flushright}<p class="flushright">--- 摘自 《庄子·杂篇·物》</p>\EndKnitrBlock{flushright}

> The fish trap exists because of the fish; once you've gotten the fish, you can forget the trap. The rabbit snare exists because of the rabbit; once you've gotten the rabbit, you can forget the snare. Words exist because of meaning; once you've gotten the meaning, you can forget the words. Where can I find a man who has forgotten words so I can have a word with him ? ^[Translated by [Eric D. Kolaczyk](http://math.bu.edu/people/kolaczyk/teach.html)]

\BeginKnitrBlock{flushright}<p class="flushright">--- Chuang Tzu</p>\EndKnitrBlock{flushright}

1. 把平时遇到的问题分类汇总形成一本笔记，用以时常查看和更新。
2. 网罗精美的案例，学习之，应用之
3. 挑选感兴趣的新技能，钻研之
4. 学习心得和体会，尤其是那些年的淌坑经历
5. 从使用者到开发者蜕变，先啃一下 Hadley Wickham 的几本书：
    + The tidyverse style guide/A style guide for the R language <http://style.tidyverse.org/>
    + Advanced R <https://adv-r.hadley.nz/>
    + R packages <http://r-pkgs.had.co.nz/>
    + R for Data Science <http://r4ds.had.co.nz/>
6. 要写书搭网站，先看一下 Yihui Xie 的书
    + bookdown: Authoring Books and Technical Documents with R Markdown <https://bookdown.org/yihui/bookdown/>
    + blogdown: Creating Websites with R Markdown <https://bookdown.org/yihui/blogdown/>
    + R Markdown: The Definitive Guide <https://bookdown.org/yihui/rmarkdown/>

<!-- The R-Box 的创意来自 VirtualBox OSE，R-Box 容纳的是R基础、统计图形、统计计算、优化算法、统计模型等 -->
<!-- ```{r vbox-ose, echo=FALSE, out.width="55%", fig.cap="The R-Box", fig.link='https://www.virtualbox.org/wiki/Downloads'} -->
<!-- knitr::include_graphics(path = "images/VBoxOSE.png") -->
<!-- ``` -->

## 致谢 {#thanks .unnumbered}

虚位以待壮士

Thanks go to all contributers in alphabetical order: .

非常感谢谁谁以及谁谁对我的帮助。

\BeginKnitrBlock{flushright}<p class="flushright">黄湘云  
于矿大宝源公寓</p>\EndKnitrBlock{flushright}

## 结构 {#structure .unnumbered}

第一章：数学符号说明
第二章：基础知识

- R语言基础、高级技巧

你好，世界。我写了一本书。这本书是这样的，第 \@ref(install-setup) 章介绍了啥啥，第 \@ref(math-operator) 章说了啥啥，然后是啥啥……

## 后记 {#colophon .unnumbered}

这本书是在 [RStudio](https://www.rstudio.com/products/rstudio/download/) 内用 [R Markdown](https://rmarkdown.rstudio.com/) 写的， [Git](https://git-scm.com/) 控制版本， [bookdown](https://bookdown.org/yihui/bookdown/) 组织章节， [knitr](https://yihui.name/knitr/) 将 R Markdown 源文件转化为 Markdown 文件， [Pandoc](http://pandoc.org) \index{Pandoc} 再将 Markdown 文件转化为 HTML 文档，而要转化为 PDF 文档则另外需要 TinyTeX\index{TinyTeX} 发行版^[<https://yihui.name/tinytex/>] 和来自 **rticles** [@R-rticles] 包的模板（一个基于 Pandoc 的 LaTeX 模板，两个美元符号包含的就是变量，变量基本上是 LaTeX 包的设置选项）。这个网站是通过 [Travis-CI](https://travis-ci.org/) 把编译结果（即 `_book` 目录）推送到 [Netlify](https://www.netlify.com/)，实现部署。在 Travis-CI 和 Netlify 都与 Github 绑定的情况下，源代码一发生改变就会触发编译和部署，即持续集成和连续部署，你正在阅读的是 2018-10-29 在 [Travis](https://travis-ci.org/XiangyunHuang/notesdown) 上构建的。

如果编译和部署成功，你会看到一个绿色的指示器，否则指示器显示红色。[![Build Status](https://travis-ci.org/XiangyunHuang/notesdown.svg?branch=master)](https://travis-ci.org/XiangyunHuang/notesdown)

## 说明 {#conventions .unnumbered}

[sourceserifpro](https://ctan.org/pkg/sourceserifpro) 设为默认英文字体，[inconsolata](http://levien.com/type/myfonts/inconsolata.html) 用于代码显示，R 包名称在文中以粗体显示，代码块输出用 `#>` 表示，以区分普通的代码注释 `#`

我用了两个 R 包编译这本书，分别是 **knitr**\index{knitr} [@Dynamic2015CRC] 和 **bookdown**\index{bookdown} [@bookdown2016CRC]。绘图使用的中文字体是思源宋体和思源黑体， **showtext**\index{showtext} 包安装和调用，**tikzDevice**\index{tikzDevice} 和 **fontcm**\index{fontcm} 处理其中的数学公式，**xkcd**\index{xkcd} 设置漫画手写体风格，以下是我的 R 进程信息：


```r
xfun::session_info(packages = c('rmarkdown','bookdown'))
#> R version 3.5.1 (2017-01-27)
#> Platform: x86_64-pc-linux-gnu (64-bit)
#> Running under: Ubuntu 14.04.5 LTS
#> 
#> Locale:
#>   LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
#>   LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
#>   LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
#>   LC_PAPER=en_US.UTF-8       LC_NAME=C                 
#>   LC_ADDRESS=C               LC_TELEPHONE=C            
#>   LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
#> 
#> Package version:
#>   backports_1.1.2 base64enc_0.1.3 bookdown_0.7    digest_0.6.18  
#>   evaluate_0.12   glue_1.3.0      graphics_3.5.1  grDevices_3.5.1
#>   highr_0.7       htmltools_0.3.6 jsonlite_1.5    knitr_1.20     
#>   magrittr_1.5    markdown_0.8    methods_3.5.1   mime_0.6       
#>   Rcpp_0.12.19    rmarkdown_1.10  rprojroot_1.3.2 stats_3.5.1    
#>   stringi_1.2.4   stringr_1.3.1   tinytex_0.9     tools_3.5.1    
#>   utils_3.5.1     xfun_0.4        yaml_2.2.0
# rstan::stan_version()
# blogdown::hugo_version()
cat(system("xelatex -v", intern = TRUE), sep = "\n")
#> XeTeX 3.14159265-2.6-0.99999 (TeX Live 2018)
#> kpathsea version 6.3.0
#> Copyright 2018 SIL International, Jonathan Kew and Khaled Hosny.
#> There is NO warranty.  Redistribution of this software is
#> covered by the terms of both the XeTeX copyright and
#> the Lesser GNU General Public License.
#> For more information about these matters, see the file
#> named COPYING and the XeTeX source.
#> Primary author of XeTeX: Jonathan Kew.
#> Compiled with ICU version 61.1; using 61.1
#> Compiled with zlib version 1.2.11; using 1.2.11
#> Compiled with FreeType2 version 2.9.0; using 2.9.0
#> Compiled with Graphite2 version 1.3.11; using 1.3.11
#> Compiled with HarfBuzz version 1.7.6; using 1.7.6
#> Compiled with libpng version 1.6.34; using 1.6.34
#> Compiled with poppler version 0.63.0
#> Compiled with fontconfig version 2.11.0; using 2.11.0
cat(system2("gcc", args = "-v", stderr = TRUE, stdout = TRUE), sep = "\n")
#> Using built-in specs.
#> COLLECT_GCC=gcc
#> COLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-linux-gnu/4.8/lto-wrapper
#> Target: x86_64-linux-gnu
#> Configured with: ../src/configure -v --with-pkgversion='Ubuntu 4.8.4-2ubuntu1~14.04.4' --with-bugurl=file:///usr/share/doc/gcc-4.8/README.Bugs --enable-languages=c,c++,java,go,d,fortran,objc,obj-c++ --prefix=/usr --program-suffix=-4.8 --enable-shared --enable-linker-build-id --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.8 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-gnu-unique-object --disable-libmudflap --enable-plugin --with-system-zlib --disable-browser-plugin --enable-java-awt=gtk --enable-gtk-cairo --with-java-home=/usr/lib/jvm/java-1.5.0-gcj-4.8-amd64/jre --enable-java-home --with-jvm-root-dir=/usr/lib/jvm/java-1.5.0-gcj-4.8-amd64 --with-jvm-jar-dir=/usr/lib/jvm-exports/java-1.5.0-gcj-4.8-amd64 --with-arch-directory=amd64 --with-ecj-jar=/usr/share/java/eclipse-ecj.jar --enable-objc-gc --enable-multiarch --disable-werror --with-arch-32=i686 --with-abi=m64 --with-multilib-list=m32,m64,mx32 --with-tune=generic --enable-checking=release --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu
#> Thread model: posix
#> gcc version 4.8.4 (Ubuntu 4.8.4-2ubuntu1~14.04.4)
cat(system2("g++", args = "-v", stderr = TRUE, stdout = TRUE), sep = "\n")
#> Using built-in specs.
#> COLLECT_GCC=g++
#> COLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-linux-gnu/4.8/lto-wrapper
#> Target: x86_64-linux-gnu
#> Configured with: ../src/configure -v --with-pkgversion='Ubuntu 4.8.4-2ubuntu1~14.04.4' --with-bugurl=file:///usr/share/doc/gcc-4.8/README.Bugs --enable-languages=c,c++,java,go,d,fortran,objc,obj-c++ --prefix=/usr --program-suffix=-4.8 --enable-shared --enable-linker-build-id --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.8 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-gnu-unique-object --disable-libmudflap --enable-plugin --with-system-zlib --disable-browser-plugin --enable-java-awt=gtk --enable-gtk-cairo --with-java-home=/usr/lib/jvm/java-1.5.0-gcj-4.8-amd64/jre --enable-java-home --with-jvm-root-dir=/usr/lib/jvm/java-1.5.0-gcj-4.8-amd64 --with-jvm-jar-dir=/usr/lib/jvm-exports/java-1.5.0-gcj-4.8-amd64 --with-arch-directory=amd64 --with-ecj-jar=/usr/share/java/eclipse-ecj.jar --enable-objc-gc --enable-multiarch --disable-werror --with-arch-32=i686 --with-abi=m64 --with-multilib-list=m32,m64,mx32 --with-tune=generic --enable-checking=release --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu
#> Thread model: posix
#> gcc version 4.8.4 (Ubuntu 4.8.4-2ubuntu1~14.04.4)
```

## 授权 {#licenses .unnumbered}

\BeginKnitrBlock{rmdwarning}<div class="rmdwarning">本书采用 [知识共享署名-非商业性使用-禁止演绎 4.0 国际许可协议](https://creativecommons.org/licenses/by-nc-nd/4.0/) 许可，请君自重，别没事儿拿去传个什么新浪爱问、百度文库以及 XX 经济论坛，项目中代码使用 [MIT 协议](https://github.com/XiangyunHuang/notesdown/blob/master/LICENSE) 开源</div>\EndKnitrBlock{rmdwarning}
<img src="images/by-nc-nd.svg" width="15%" style="display: block; margin: auto auto auto 0;" />



