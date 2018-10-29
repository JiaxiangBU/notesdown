
\cleardoublepage 

# (APPENDIX) 附录 {-}

# 命令行 {#command-line}



## 软件包管理器 {#apt}

### 添加和删除 PPA {#ppa}

```bash
sudo add-apt-repository -y ppa:opencpu/imagemagick
sudo add-apt-repository --remove ppa:opencpu/imagemagick
```

### 清理修复软件包 {#clean}

```bash
sudo aptitude install build-essential # 修复依赖问题
sudo apt update # 更新资源列表
sudo apt-get upgrade # 更新软件包
apt list --upgradable # 列出可升级的包
sudo apt clean
sudo apt autoremove
sudo apt-get autoclean # 删除已卸的软件的备份
sudo apt-get clean # 删除已装或已卸的软件的备份
```

### 搜索查询安装 {#search-show-install}

```bash
# 搜索
apt-cache search octave | grep octave
# 查询
apt show octave
# 安装
sudo apt install octave
```

```bash
sudo apt-get install lsb-core
```

```bash
lsb_release -a
```

## LaTeX 包管理器 {#tlmgr}

LaTeX 包管理器说的其实是 tlmgr (TeXLive Manager)


```r
base::system('xelatex --version', intern = TRUE)
#>  [1] "XeTeX 3.14159265-2.6-0.99999 (TeX Live 2018)"                    
#>  [2] "kpathsea version 6.3.0"                                          
#>  [3] "Copyright 2018 SIL International, Jonathan Kew and Khaled Hosny."
#>  [4] "There is NO warranty.  Redistribution of this software is"       
#>  [5] "covered by the terms of both the XeTeX copyright and"            
#>  [6] "the Lesser GNU General Public License."                          
#>  [7] "For more information about these matters, see the file"          
#>  [8] "named COPYING and the XeTeX source."                             
#>  [9] "Primary author of XeTeX: Jonathan Kew."                          
#> [10] "Compiled with ICU version 61.1; using 61.1"                      
#> [11] "Compiled with zlib version 1.2.11; using 1.2.11"                 
#> [12] "Compiled with FreeType2 version 2.9.0; using 2.9.0"              
#> [13] "Compiled with Graphite2 version 1.3.11; using 1.3.11"            
#> [14] "Compiled with HarfBuzz version 1.7.6; using 1.7.6"               
#> [15] "Compiled with libpng version 1.6.34; using 1.6.34"               
#> [16] "Compiled with poppler version 0.63.0"                            
#> [17] "Compiled with fontconfig version 2.11.0; using 2.11.0"
```


```r
base::system('tlmgr info --list --only-installed --data name,size', intern = TRUE)
#>   [1] "alegreya,52436992"                
#>   [2] "amscls,323584"                    
#>   [3] "amsfonts,7696384"                 
#>   [4] "amsmath,196608"                   
#>   [5] "babel,3346432"                    
#>   [6] "bibtex,208896"                    
#>   [7] "bibtex.x86_64-linux,167936"       
#>   [8] "booktabs,8192"                    
#>   [9] "caption,217088"                   
#>  [10] "changepage,16384"                 
#>  [11] "cm,1392640"                       
#>  [12] "colortbl,12288"                   
#>  [13] "ctex,733184"                      
#>  [14] "dehyph,233472"                    
#>  [15] "dvipdfmx,163840"                  
#>  [16] "dvipdfmx.x86_64-linux,999424"     
#>  [17] "dvipng,0"                         
#>  [18] "dvipng.x86_64-linux,1073152"      
#>  [19] "dvips,380928"                     
#>  [20] "dvips.x86_64-linux,376832"        
#>  [21] "dvisvgm,0"                        
#>  [22] "dvisvgm.x86_64-linux,5492736"     
#>  [23] "ec,5918720"                       
#>  [24] "environ,8192"                     
#>  [25] "etex,45056"                       
#>  [26] "etoolbox,49152"                   
#>  [27] "euenc,57344"                      
#>  [28] "fancyvrb,73728"                   
#>  [29] "fandol,34922496"                  
#>  [30] "filehook,36864"                   
#>  [31] "fontspec,311296"                  
#>  [32] "framed,24576"                     
#>  [33] "geometry,45056"                   
#>  [34] "glyphlist,98304"                  
#>  [35] "graphics,126976"                  
#>  [36] "graphics-cfg,8192"                
#>  [37] "graphics-def,86016"               
#>  [38] "gsftopk,8192"                     
#>  [39] "gsftopk.x86_64-linux,94208"       
#>  [40] "helvetic,2433024"                 
#>  [41] "hyperref,962560"                  
#>  [42] "hyphen-base,98304"                
#>  [43] "ifluatex,8192"                    
#>  [44] "ifmtarg,4096"                     
#>  [45] "iftex,4096"                       
#>  [46] "ifxetex,4096"                     
#>  [47] "inconsolata,1302528"              
#>  [48] "jknapltx,77824"                   
#>  [49] "knuth-lib,192512"                 
#>  [50] "kpathsea,208896"                  
#>  [51] "kpathsea.x86_64-linux,163840"     
#>  [52] "l3kernel,1171456"                 
#>  [53] "l3packages,159744"                
#>  [54] "latex,1675264"                    
#>  [55] "latex-bin,0"                      
#>  [56] "latex-bin.x86_64-linux,16384"     
#>  [57] "latex-fonts,249856"               
#>  [58] "latexconfig,40960"                
#>  [59] "latexmk,380928"                   
#>  [60] "latexmk.x86_64-linux,4096"        
#>  [61] "lm,43601920"                      
#>  [62] "lm-math,737280"                   
#>  [63] "lualibs,741376"                   
#>  [64] "luaotfload,5771264"               
#>  [65] "luaotfload.x86_64-linux,4096"     
#>  [66] "luatex,151552"                    
#>  [67] "luatex.x86_64-linux,26660864"     
#>  [68] "makeindex,36864"                  
#>  [69] "makeindex.x86_64-linux,151552"    
#>  [70] "mathpazo,167936"                  
#>  [71] "mathspec,45056"                   
#>  [72] "mdwtools,126976"                  
#>  [73] "metafont,147456"                  
#>  [74] "metafont.x86_64-linux,696320"     
#>  [75] "mfware,16384"                     
#>  [76] "mfware.x86_64-linux,593920"       
#>  [77] "microtype,430080"                 
#>  [78] "ms,49152"                         
#>  [79] "natbib,135168"                    
#>  [80] "ncntrsbk,1249280"                 
#>  [81] "oberdiek,2879488"                 
#>  [82] "paralist,16384"                   
#>  [83] "parskip,8192"                     
#>  [84] "pdfcrop,40960"                    
#>  [85] "pdfcrop.x86_64-linux,8192"        
#>  [86] "pdftex,266240"                    
#>  [87] "pdftex.x86_64-linux,2191360"      
#>  [88] "pgf,5386240"                      
#>  [89] "placeins,4096"                    
#>  [90] "plain,1376256"                    
#>  [91] "preview,57344"                    
#>  [92] "psnfss,450560"                    
#>  [93] "rsfs,143360"                      
#>  [94] "sauerj,32768"                     
#>  [95] "scheme-infraonly,0"               
#>  [96] "setspace,24576"                   
#>  [97] "sourcecodepro,7499776"            
#>  [98] "subfig,32768"                     
#>  [99] "tetex,520192"                     
#> [100] "tetex.x86_64-linux,77824"         
#> [101] "tex,0"                            
#> [102] "tex-ini-files,32768"              
#> [103] "tex.x86_64-linux,385024"          
#> [104] "tex4ht,33165312"                  
#> [105] "tex4ht.x86_64-linux,299008"       
#> [106] "texlive.infra,1007616"            
#> [107] "texlive.infra.x86_64-linux,352256"
#> [108] "times,1372160"                    
#> [109] "tipa,4489216"                     
#> [110] "titling,8192"                     
#> [111] "tocbibind,12288"                  
#> [112] "tocloft,36864"                    
#> [113] "tools,368640"                     
#> [114] "trimspaces,4096"                  
#> [115] "ttfutils,897024"                  
#> [116] "ttfutils.x86_64-linux,1765376"    
#> [117] "tufte-latex,110592"               
#> [118] "type1cm,8192"                     
#> [119] "ucs,2883584"                      
#> [120] "ulem,24576"                       
#> [121] "unicode-data,2322432"             
#> [122] "units,8192"                       
#> [123] "upquote,4096"                     
#> [124] "url,16384"                        
#> [125] "xcolor,81920"                     
#> [126] "xecjk,532480"                     
#> [127] "xetex,24576"                      
#> [128] "xetex.x86_64-linux,26107904"      
#> [129] "xetexconfig,4096"                 
#> [130] "xifthen,8192"                     
#> [131] "xkeyval,114688"                   
#> [132] "xunicode,208896"                  
#> [133] "zapfding,98304"                   
#> [134] "zhnumber,57344"
# or tinytex::tlmgr(c("info", "--list", "--only-installed", "--data", "name,size"))
```


### 安装和更新 {#install-update}

```bash
# 就近选择 CTAN 镜像站点
tlmgr option repository https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet
tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
# 可更新的 TeX 包列表
tlmgr update --list
# 更新所有已经安装的 TeX 包
tlmgr update --all
# 更新 tlmgr 管理器本身
tlmgr update --self
# 安装
tlmgr install ctex fandol
# 列出套装
tlmgr list schemes
tlmgr list collections
# 列出已经安装的 TeX 包
tlmgr list --only-installed
```

## 查看文件

```bash
head -n 100 clientip.csv # 查看文件前100行
tail -n 20 clientip.csv  # 查看文件后20行
```

## 挂载共享文件夹

```bash
sudo mount -t vboxsf -o uid=1000,gid=1000 Downloads /home/share
sudo chmod -R 777 ./share  给目录添加权限
```
## tar 压缩文件

```bash
tar -cjf clientip.tar.bz2 clientip.csv
```
## cp 到共享文件夹

```bash
sudo cp /home/cloud/clientip.tar.bz2 ./
sudo cp /home/cloud/clientipSQL.tar.bz2 ./

sudo cp /home/cloud/clientip.csv ./  #  复制到当前文件夹下
sudo cp /home/cloud/clientip.SQL ./
```

安装 GPG 公钥（只限Win/Mac）

```bash
tlmgr --repository http://www.preining.info/tlgpg/ install tlgpg
```

### 搜索 {#search}

```bash
tlmgr search *what*
```

- 参数 \*what\* 是正则表达式


```r
# tlmgr search --file tikz.sty
tinytex::tlmgr_search('tikz.sty')
#> tlmgr search --file --global 'tikz.sty'
```

这样，我们就可以知道要使用 `\usepackage{tikz}` 就得先安装 **pgf** 包，此外，管道命令也是支持的

```bash
tlmgr search --file font | grep math
```
查询 CTAN 仓库列表

```bash
tlmgr repository list
```


## 文件操作 {#File-Manipulation}

Linux 命令行工具是非常强大的^[<https://www.datascienceatthecommandline.com/>]。

### 查看文件

```bash
ls -a
```

列出目录下所有文件

```bash
ls -1 
```
一行显示一个文件或文件夹

```bash
ls -l 
```

按从 aA-zZ 的顺序列出所有文件以及所属权限

```bash
ls -rl 
```

相比于 `ls -l` 文件是逆序排列

```bash
ls -lh
```

列出文件或文件夹（不包含子文件夹）的大小 

```bash
ls -ld 
```

列出当前目录本身，而不是其所包含的内容



### 新建和删除 {#create-delete}

创建文件夹

```bash
mkdir images
```

创建文件用 `touch` 如 `touch .Rprofile` 

```bash
# 删除文件夹及子文件夹，递归删除
rm -rf images/
# 删除文件
rm .Rprofile
```

### 解压和压缩

tar 解压

```bash
tar -xzvf R-3.5.1.tar.gz
```

其中，`-v` 显示解压后的文件

tar 压缩

```bash
tar -czvf rstan.tar.gz rstan/
```

当前目录下，将 `rstan/` 目录压缩为 `rstan.tar.gz` 文件


### 移动文件

在当前目录下

```bash
# 移动文件夹 images 下的所有文件到 figures 文件夹下
mv images/* figures/
# images 文件夹移动到 figures 文件夹下
mv images/ figures/
# 移动特定的文件
mv images/*.png figures/
```

同一目录下有两个文件 `R-3.5.1.tar.gz` 未下载完整 和 `R-3.5.1.tar.gz.1` 完全下载

```bash
# 删除 R-3.5.1.tar.gz
rm R-3.5.1.tar.gz
# 重命名 R-3.5.1.tar.gz.1 
mv R-3.5.1.tar.gz.1  R-3.5.1.tar.gz
```

### 查看文件大小

当前目录下各文件夹的大小， `-h` 表示人类可读的方式显示，如 Kb、Mb、Gb，`-d` 表示目录深度 `du --human-readable --max-depth=1 ./`

```bash
du -h -d 1 ./
```

```bash
# 对当前目录下的文件/夹 按大小排序
du -sh * | sort -nr
```

## Git 命令 {#Git}

### 删除子模块

<https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule/>

### 合并上流 commit 

```bash
git clone --depth=5 https://github.com/XiangyunHuang/cosx.org.git
git submodule update --init --recursive
```

```bash
# 查看远程分支
cd cosx.org
git remote -v
```

```bash
origin  https://github.com/XiangyunHuang/cosx.org.git (fetch)
origin  https://github.com/XiangyunHuang/cosx.org.git (push)
```


```bash
# 添加上流分支
git remote add upstream https://github.com/cosname/cosx.org.git
git remote -v
```

```bash
origin  https://github.com/XiangyunHuang/cosx.org.git (fetch)
origin  https://github.com/XiangyunHuang/cosx.org.git (push)
upstream        https://github.com/cosname/cosx.org.git (fetch)
upstream        https://github.com/cosname/cosx.org.git (push)
```

```bash
# 获取上流 commit 并且合并到我的 master 分支
git fetch upstream
git merge upstream/master master
git push origin master
```

### 大文件支持

```bash
sudo apt install git-lfs
git lfs install
git lfs track "*.psd"
git add .gitattributes
git commit -m "track *.psd files using Git LFS"
git push origin master
```

### 新建分支


```bash
git checkout -b stan # 新建 stan 分支
git branch -v # 查看本地分支 stan 前有个星号标记
git pull --rebase git@github.com:XiangyunHuang/cosx.org.git master
# 同步到远程分支 stan
git push --set-upstream origin stan
git push origin master:stan

git add .
git commit -m "balabala"
git push --set-upstream origin stan
```

### 创建站点

基于 GitHub Pages 创建站点用于存放图片和数据

1. 在Github上创建一个空的仓库，命名为 uploads，没有 readme.md 和 LICENSE
2. 在本地创建目录 uploads 
3. 切换到 uploads 目录下

```bash
git init 
git checkout -b gh-pages
git remote add origin https://github.com/XiangyunHuang/home.git
```
添加图片或者数据，并且 git add 和 commit 后

```bash
git push --set-upstream origin gh-pages
```

这样仓库 home 只包含 gh-pages 分支

数据地址即为

<https://xiangyunhuang.github.io/home/data/eqList2018_05_18.xls>

### 回车换行

CR (Carriage Return) 表示回车，LF (Line Feed) 表示换行，Windows 下用回车加换行表示下一行，UNIX/Linux 采用换行符 (LF) 表示下一行，MAC OS 则采用回车符 (CR) 表示下一行

```bash
git config --global core.autocrlf false
```

添加子模块

```bash
git submodule add git://github.com/jgm/pandoc-templates.git templates
```

克隆项目

```bash
git clone --depth=10 --branch=master --recursive \
    git@github.com:XiangyunHuang/pandoc4everything.git
```

配置账户

```bash
git config --global user.email "email"
git config --global user.name "username"
touch .git-credentials
echo "https://username:password@github.com" >> .git-credentials
git config --global credential.helper store
```

往空的 Github 仓库添加本地文件

```bash
git init
git remote add origin https://github.com/XiangyunHuang/notesdown.git
git add -A
git commit -m "balabala"
git push -u origin master
```

本地新建仓库推送至远程分支

```bash
git remote add origin https://github.com/XiangyunHuang/notesdown.git
git add .
git commit -m "init cos-art"
# 此时远程仓库 notesdown 还没有 cos-art 分支
git push origin master:cos-art
```

位于 [Github](https://github.com/liuhui998/gitbook) [Git Community Book 中译本](http://gitbook.liuhui998.com/)


### 创建PR 

```bash
git pull --rebase git@github.com:yihui/xaringan.git master
# then force push to your master branch
```

参考 <https://github.com/yihui/xaringan/pull/107>

> I don't recommend you to use your master branch for pull requests, because all commits will be squashed before merging, e.g. c2c2055 Then you will have some trouble with syncing your master branch with the master branch here (your choices are (1) delete your repo and fork again; or (2) force push; either option is not good). For pull requests, I recommend that you always use different branches for different pull requests.


## 安装软件 {#software-installation}

### R 

在 Ubuntu/Debian 系统上安装最新开发版，请看 <https://cran.r-project.org/bin/linux/debian/index.html>

```bash
sudo apt-add-repository -y "deb http://cran.rstudio.com/bin/linux/ubuntu `lsb_release -cs`/"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base-dev
```

R 自3.5以来出现大的不同

```bash
sudo apt-add-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/"
# 或者就近的镜像站点
sudo apt-add-repository -y "deb https://mirrors.tuna.tsinghua.edu.cn/CRAN/bin/linux/ubuntu bionic-cran35/"
# 必须导入 key 
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base r-base-dev
# 添加二进制编译好的R包仓库，有些R包依赖复杂，编译时间长
# R 3.5.0 系列 二进制 R 包
sudo add-apt-repository ppa:marutter/c2d4u3.5
sudo apt-get update
```

查询 PATH 环境变量包含的软件路径


```r
strsplit(Sys.getenv("PATH"),split = .Platform$path.sep) %>% unlist
#>  [1] "//home/travis/.TinyTeX/bin/x86_64-linux"             
#>  [2] "/home/travis/.rvm/gems/ruby-2.4.1/bin"               
#>  [3] "/home/travis/.rvm/gems/ruby-2.4.1@global/bin"        
#>  [4] "/home/travis/.rvm/rubies/ruby-2.4.1/bin"             
#>  [5] "/home/travis/.rvm/bin"                               
#>  [6] "/home/travis/R-bin/bin"                              
#>  [7] "/home/travis/bin"                                    
#>  [8] "/home/travis/.local/bin"                             
#>  [9] "/opt/pyenv/shims"                                    
#> [10] "/home/travis/.phpenv/shims"                          
#> [11] "/home/travis/perl5/perlbrew/bin"                     
#> [12] "/home/travis/.nvm/versions/node/v8.12.0/bin"         
#> [13] "/home/travis/.kiex/elixirs/elixir-1.3.2/bin"         
#> [14] "/home/travis/.kiex/bin"                              
#> [15] "/home/travis/gopath/bin"                             
#> [16] "/home/travis/.gimme/versions/go1.7.4.linux.amd64/bin"
#> [17] "/usr/local/phantomjs/bin"                            
#> [18] "/usr/local/phantomjs"                                
#> [19] "/usr/local/neo4j-3.2.7/bin"                          
#> [20] "/usr/local/cmake-3.9.2/bin"                          
#> [21] "/usr/local/clang-5.0.0/bin"                          
#> [22] "/usr/local/sbin"                                     
#> [23] "/usr/local/bin"                                      
#> [24] "/usr/sbin"                                           
#> [25] "/usr/bin"                                            
#> [26] "/sbin"                                               
#> [27] "/bin"                                                
#> [28] "/opt/ghc/bin"                                        
#> [29] "/home/travis/.phpenv/bin"                            
#> [30] "/opt/pyenv/bin"                                      
#> [31] "/home/travis/.yarn/bin"
```

Windows 下安装指导见《R语言忍者秘笈》的第二章^[<https://bookdown.org/yihui/r-ninja/setup.html>]

推荐没事多翻翻官网 [FAQ 文档](https://mirrors.tuna.tsinghua.edu.cn/CRAN/doc/FAQ/R-FAQ.html) 以及6本自带的手册

* **An Introduction to R** (R-intro) includes information on data types, programming elements, statistical modeling and graphics. This document is based on the **Notes on S-PLUS** by Bill Venables and David Smith.
    + 介绍数据类型，编程基础，统计模型和图形
* **Writing R Extensions** (R-exts) currently describes the process of creating R add-on packages, writing R documentation, R’s system and foreign language interfaces, and the R API.
    + 描述创建扩展包、写R包文档的过程，介绍 R 系统，外部语言接口以及 R 的API
* **R Data Import/Export** (R-data) is a guide to importing and exporting data to and from R.
    + 从 R 导入和导出数据
* **The R Language Definition** (R-lang), a first version of the *Kernighan & Ritchie of R*, explains evaluation, parsing, object oriented programming, computing on the language, and so forth.
    + 介绍 R 语言程序设计，解释计算、解析、面向对象编程以及计算
* **R Installation and Administration** (R-admin).
    + R 安装和管理
* **R Internals** (R-ints) is a guide to R’s internal structures. (Added in R 2.4.0.)
    + R 内部结构指南

Hadley Wickham 正在写文档介绍 [Documentation for R's internal C API](https://github.com/hadley/r-internals)

- 从源码编译 R 的需求在哪呢？

1. 爱折腾的极客：玩配置，学习 make 相关工具和 Linux 世界的依赖
2. 追求性能：如 [LFS 支持](http://users.suse.com/~aj/linux_lfs.html) 和 [Intel MKL 加速](http://dirk.eddelbuettel.com/blog/2018/04/15/#018_mkl_for_debian_ubuntu)
3. 环境限制：CentOS 6/7 或者红帽系统，自带的 R 版本比较落后
4. 微软提供的一套 MSR （这里不需要编译）

现在很多东西都讲究 docker 化，直接往 CentOS 系统上编译安装最新版 R 会越来越少，这里给个例子，在 docker 内安装 R 和扩展包，Dockerfile 的内容如下


```r
cat(readLines("docs/Dockerfile", encoding = "UTF-8") ,sep = "\n")
#> FROM rocker/geospatial:latest
#> 
#> MAINTAINER Xiangyun Huang <xiangyunfaith@outlook.com>
#> 
#> # System dependencies for required R packages
#> RUN apt-get update \
#>   && apt-get install -y --no-install-recommends \
#>     imagemagick \
#>     optipng \
#>     curl \
#>     dieharder \
#>     libdieharder3 \
#>     libdieharder-dev \
#>     libpoppler-cpp-dev \
#>     python-dev \
#>     python-pip \
#>     python-tk \
#>     octave \
#>     proj-bin \
#>     libpaper-utils \
#>     libatlas3-base \
#>     build-essential \
#>     python-wheel \
#>     pstoedit \
#>   && pip install numpy \
#>     matplotlib
#> 
#> # TinyTeX for PDF
#> RUN mkdir ~/.fonts \
#>   && curl -o ~/.fonts/Inconsolata-Bold.ttf https://raw.githubusercontent.com/google/fonts/master/ofl/inconsolata/Inconsolata-Bold.ttf \
#>   && curl -o ~/.fonts/Inconsolata-Regular.ttf https://raw.githubusercontent.com/google/fonts/master/ofl/inconsolata/Inconsolata-Regular.ttf \
#>   && fc-cache -fv ~/.fonts \
#>   && git clone --depth=1 --branch=master https://github.com/XiangyunHuang/bookdown-chinese.git \
#>   && cd bookdown-chinese \
#>   && tlmgr update --all --self \
#>   && tlmgr install $(cat TeXLive.pkgs | tr '\n' ' ') || true \
#>   && Rscript -e "devtools::install_github('leonawicz/mapmate')" \
#>   && Rscript -e "devtools::install_github('dgrtwo/gganimate')" \
#>   && Rscript -e "bookdown::render_book('index.Rmd')"
#> 
#> RUN mkdir /liftrroot/
#> WORKDIR /liftrroot/
```

这种方式可以安装到最新版的 R，同时省去了自己配置安装过程中的麻烦，只是系统自带的 texlive 还是比较旧，如何安装 tlmgr 管理器，安装新的 TeX 包到之前的位置值得考虑，主要目的是为中文的 R Markdown 文档服务。

Pandoc 提供的 LaTeX 文类，是希望用户在 YAML 指定 CJKmainfont 等，显式地安装系统中文字体供使用，楷体和宋体，文泉驿黑体都是系统自带的。要我说可以用思源黑体和宋体，或者自己拷贝一份中文字体到 `~/.fonts` 然后刷新，就是添加这样一段代码，这种做法使用最广

```
RUN mkdir ~/.fonts \
  && curl -o ~/.fonts/Inconsolata-Bold.ttf https://raw.githubusercontent.com/google/fonts/master/ofl/inconsolata/Inconsolata-Bold.ttf \
  && curl -o ~/.fonts/Inconsolata-Regular.ttf https://raw.githubusercontent.com/google/fonts/master/ofl/inconsolata/Inconsolata-Regular.ttf \
  && fc-cache -fv ~/.fonts \
```

文泉驿字体

```
wqy-unibit-fonts wqy-microhei-fonts wqy-zenhei-fonts
```



* 安装 Microsoft R Open <https://mran.microsoft.com/documents/rro/installation#revorinst-lin>
* 安装 Machine Learning Server
    + [在线安装](https://docs.microsoft.com/en-us/machine-learning-server/install/machine-learning-server-linux-install)
    + [离线安装](https://docs.microsoft.com/en-us/machine-learning-server/install/machine-learning-server-linux-offline)




### GCC 

CentOS 7 默认版本是 gcc-4.8.5

```bash
sudo yum install centos-release-scl-rh
sudo yum install devtoolset-4-gcc devtoolset-4-gcc-c++
source /opt/rh/devtoolset-4/enable

options(BioC_mirror="https://mirrors.tuna.tsinghua.edu.cn/bioconductor")
options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))

# gcc 4.8.2
rpm --import http://linuxsoft.cern.ch/cern/slc6X/x86_64/RPM-GPG-KEY-cern
wget -O /etc/yum.repos.d/slc6-devtoolset.repo http://linuxsoft.cern.ch/cern/devtoolset/slc6-devtoolset.repo
sudo yum install devtoolset-2-toolchain
sudo yum install devtoolset-2-gcc  devtoolset-2-gcc-c++
source /opt/rh/devtoolset-2/enable
```

### Python

Python 版本和位置


```r
Sys.which("python")
#>            python 
#> "/usr/bin/python"
system2("python", args = "--version", stderr = TRUE)
#> Warning in system2("python", args = "--version", stderr = TRUE): setting
#> stdout = TRUE
#> [1] "Python 2.7.6"
```


升级 Python

```bash
sudo add-apt-repository ppa:fkrull/deadsnakes-python2.7  
sudo apt-get update  
```

可用的 python 模块


```python
help('modules')
#> 
#> Please wait a moment while I gather a list of all available modules...
#> 
#> BaseHTTPServer      asyncore            imghdr              serial
#> Bastion             atexit              imp                 sets
#> CDROM               audiodev            importlib           setuptools
#> CGIHTTPServer       audioop             imputil             sgmllib
#> Canvas              axi                 inspect             sha
#> Cheetah             base64              io                  shelve
#> ConfigParser        bdb                 itertools           shlex
#> Cookie              binascii            json                shutil
#> DLFCN               binhex              jsonpatch           signal
#> Dialog              bisect              jsonpointer         site
#> DocXMLRPCServer     boto                keyword             sitecustomize
#> FileDialog          bsddb               landscape           six
#> FixTk               bz2                 lib2to3             smtpd
#> HTMLParser          bzrlib              linecache           smtplib
#> IN                  cPickle             linuxaudiodev       sndhdr
#> MimeWriter          cProfile            locale              socket
#> OpenSSL             cStringIO           logging             spwd
#> PAM                 calendar            lsb_release         sqlite3
#> Queue               cgi                 macpath             sre
#> ScrolledText        cgitb               macurl2path         sre_compile
#> SimpleDialog        chardet             mailbox             sre_constants
#> SimpleHTTPServer    chunk               mailcap             sre_parse
#> SimpleXMLRPCServer  cloudinit           markupbase          ssl
#> SocketServer        cmath               marshal             stat
#> StringIO            cmd                 math                statvfs
#> TYPES               code                matplotlib          string
#> Tix                 codecs              md5                 stringold
#> Tkconstants         codeop              mercurial           stringprep
#> Tkdnd               collections         mhlib               strop
#> Tkinter             colorsys            mimetools           struct
#> UserDict            commands            mimetypes           subprocess
#> UserList            compileall          mimify              sunau
#> UserString          compiler            miniterm            sunaudio
#> _LWPCookieJar       configobj           mmap                svg_regex
#> _MozillaCookieJar   contextlib          modulefinder        svg_transform
#> __builtin__         cookielib           mpl_toolkits        symbol
#> __future__          copy                multifile           symtable
#> _abcoll             copy_reg            multiprocessing     sys
#> _ast                cqlsh               mutex               sysconfig
#> _bisect             cqlshlib            netrc               syslog
#> _bsddb              crcmod              new                 tabnanny
#> _codecs             crypt               nis                 tarfile
#> _codecs_cn          csv                 nntplib             telnetlib
#> _codecs_hk          ctypes              ntpath              tempfile
#> _codecs_iso2022     curl                nturl2path          termios
#> _codecs_jp          curses              numbers             test
#> _codecs_kr          datetime            numpy               textwrap
#> _codecs_tw          dateutil            oauth               this
#> _collections        dbhash              opcode              thread
#> _csv                dbm                 operator            threading
#> _ctypes             deb822              optparse            time
#> _ctypes_test        debconf             os                  timeit
#> _curses             debian              os2emxpath          tkColorChooser
#> _curses_panel       debian_bundle       ossaudiodev         tkCommonDialog
#> _elementtree        decimal             parser              tkFileDialog
#> _functools          difflib             pdb                 tkFont
#> _hashlib            dircache            pickle              tkMessageBox
#> _heapq              dis                 pickletools         tkSimpleDialog
#> _hotshot            distutils           pip                 toaiff
#> _io                 doctest             pipes               token
#> _json               dumbdbm             pkg_resources       tokenize
#> _locale             dummy_thread        pkgutil             trace
#> _lsprof             dummy_threading     platform            traceback
#> _md5                easy_install        plistlib            ttk
#> _multibytecodec     email               popen2              tty
#> _multiprocessing    encodings           poplib              turtle
#> _osx_support        errno               posix               twisted
#> _pyio               exceptions          posixfile           types
#> _random             fcntl               posixpath           unicodedata
#> _sha                filecmp             pprint              unittest
#> _sha256             fileinput           prettytable         urllib
#> _sha512             fnmatch             profile             urllib2
#> _socket             formatter           pstats              urllib3
#> _sqlite3            fpectl              pty                 urlparse
#> _sre                fpformat            pwd                 user
#> _ssl                fractions           py_compile          uu
#> _strptime           ftplib              pyclbr              uuid
#> _struct             functools           pycurl              validate
#> _symtable           future_builtins     pydoc               virtualenv
#> _sysconfigdata      gc                  pydoc_data          virtualenv_support
#> _sysconfigdata_nd   gdbm                pyexpat             warnings
#> _testcapi           genericpath         pylab               wave
#> _threading_local    getopt              pyparsing           weakref
#> _tkinter            getpass             pytz                webbrowser
#> _warnings           gettext             quopri              wheel
#> _weakref            glob                random              whichdb
#> _weakrefset         google_compute_engine re                  wsgiref
#> _yaml               grp                 readline            xapian
#> abc                 gzip                repr                xdrlib
#> aifc                hashlib             requests            xml
#> antigravity         heapq               resource            xmllib
#> anydbm              hgext               rexec               xmlrpclib
#> apt                 hgext3rd            rfc822              xxsubtype
#> apt_inst            hmac                rlcompleter         yaml
#> apt_pkg             hotshot             robotparser         yocto_css
#> aptsources          htmlentitydefs      rpytools            zipfile
#> argparse            htmllib             runpy               zipimport
#> array               httplib             sched               zlib
#> ast                 ihooks              scour               zope
#> asynchat            imaplib             select              
#> 
#> Enter any module name to get more help.  Or, type "modules spam" to search
#> for modules whose descriptions contain the word "spam".
```

### Lapack

编译 lapack 以及 lapacke，这一步比较麻烦，首先当然是进入 lapack-3.7.1 文件夹，然后根据平台的特点，将 INSTALL 目录下对应的 make.inc.XXX 复制一份到 lapack-3.7.1目录下，并命名为 make.inc, 这里我复制的是 INSTALL/make.inc.gfortran，因为我这里用的是 gfortran 编译器。 
因为 lapack 以来于 blas 库，所以需要对 lapack-3.7.1/Makefile 做如下修改

```bash
#lib: lapacklib tmglib
lib: blaslib variants lapacklig tmglib
```

再执行

```bash
make       # 编译所有的 lapack 文件    
cd lapacke # 进入 lapacke 文件夹，这个文件夹包含 lapack 的 C 语言接口文件    
make       # 编译 lapacke    
cp include/*.h /usr/local/include # 将 lapacke 的头文件复制到系统头文件目录    
cd ..                 # 返回到 lapack-3.7.1 目录    
cp *.a /usr/local/lib # 将生成的所有库文件复制到系统库目录 
```


### Octave {#octave}

Octave 官网 <http://www.gnu.org/software/octave/>

```bash
sudo apt-add-repository -y ppa:octave/stable
sudo apt-get update
sudo apt-get install -y octave
```

安装指南分别有

- MacOS <https://wiki.octave.org/Octave_for_macOS>
- Windows <http://wiki.octave.org/Octave_for_Microsoft_Windows>
- Debian <https://wiki.octave.org/Octave_for_Debian_systems>

查看安装的版本


```r
Sys.which("octave")
#>            octave 
#> "/usr/bin/octave"
system("octave --version")
```


### Pandoc {#pandoc}

在 Pandoc 的开发仓库 GitHub 上下载 deb 包^[<https://github.com/jgm/pandoc/releases>] 

```bash
sudo apt-get install gdebi-core
sudo gdebi pandoc-2.2.2.1-1-amd64.deb
```

### RStudio {#rstudio}

安装 RStudio 或者 RStudio Server 请看官网介绍

-  <https://www.rstudio.com/products/rstudio/download/>
-  <http://docs.rstudio.com/ide/server-pro/>

在 RStudio 官网^[<https://www.rstudio.com/products/rstudio/download/>] 下载最新的 RStudio 桌面版/服务器版 

```bash
wget https://download2.rstudio.org/rstudio-server-1.1.456-amd64.deb
sudo gdebi rstudio-server-1.1.456-amd64.deb
```

设置 rstudio server 端口，在文件 `/etc/rstudio/rserver.conf` 下，设置

```
www-port=8080
```

获取机器的 IP 地址，如 192.168.106.3

```bash
ip addr
```

修改 rserver.conf 文件后需要重启才会生效，重启 rstudio server

```bash
sudo rstudio-server stop
sudo rstudio-server start
```

从本地浏览器登陆 RStudio Server 网址 <http://192.168.106.3:8080/>

### Calibre {#calibre}

将 epub 转化为 mobi 格式

```bash
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
```

### HUGO {#hugo}

在开发仓库下载最新发布的 deb 文件

<https://github.com/gohugoio/hugo/releases>

```bash
wget https://github.com/gohugoio/hugo/releases/download/v0.45/hugo_0.45_Linux-64bit.deb
sudo gdebi hugo_0.45_Linux-64bit.deb
```

### zsh {#zsh}


Zshell 是一个比 bash 更好用的终端

在 CentOS/Fedora 下

```bash
sudo yum update && sudo yum -y install zsh git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### TinyTeX {#tinytex}

- Travis 安装

益辉通过 Travis 每天更新 TinyTeX，我们下载这个版本

```bash
curl -fLo /tmp/texlive.tar.gz https://travis-bin.yihui.name/tinytex.tar.gz
```

解压到当前用户的根目录

```bash
tar xzf /tmp/tinytex.tar.gz -C ~ .TinyTeX
```

修改 .bashrc 文件将 TinyTeX 的位置添加到系统路径里

```bash
export PATH=/$HOME/.TinyTeX/bin/x86_64-linux:$PATH
```

更新 .bashrc 使得修改生效

```bash
source .bashrc
```

更新 TeX 包和 tlmgr 管理器

```bash
tlmgr update --all --self
```

安装一些 TeX 包支持中文文档编译

```bash
tlmgr install ctex fandol
```

已安装的字体


```r
font_db <- base::system("fc-list :lang=en-us | sort", intern = TRUE)
font_name <- unique(do.call(rbind,strsplit(font_db,split = ":"))[,2])
substr(font_name, 2, nchar(font_name))
#>  [1] "DejaVu Sans"            "DejaVu Sans Mono"      
#>  [3] "DejaVu Serif"           "Liberation Mono"       
#>  [5] "Liberation Sans"        "Liberation Sans Narrow"
#>  [7] "Liberation Serif"       "URW Gothic L"          
#>  [9] "URW Bookman L"          "Century Schoolbook L"  
#> [11] "Nimbus Sans L"          "Nimbus Roman No9 L"    
#> [13] "Nimbus Mono L"          "URW Palladio L"        
#> [15] "URW Chancery L"
```


```r
tinytex::tl_pkgs()
#> tlmgr info --list --only-installed --data name
#>   [1] "alegreya"         "amscls"           "amsfonts"        
#>   [4] "amsmath"          "babel"            "bibtex"          
#>   [7] "bibtex"           "booktabs"         "caption"         
#>  [10] "changepage"       "cm"               "colortbl"        
#>  [13] "ctex"             "dehyph"           "dvipdfmx"        
#>  [16] "dvipdfmx"         "dvipng"           "dvipng"          
#>  [19] "dvips"            "dvips"            "dvisvgm"         
#>  [22] "dvisvgm"          "ec"               "environ"         
#>  [25] "etex"             "etoolbox"         "euenc"           
#>  [28] "fancyvrb"         "fandol"           "filehook"        
#>  [31] "fontspec"         "framed"           "geometry"        
#>  [34] "glyphlist"        "graphics"         "graphics-cfg"    
#>  [37] "graphics-def"     "gsftopk"          "gsftopk"         
#>  [40] "helvetic"         "hyperref"         "hyphen-base"     
#>  [43] "ifluatex"         "ifmtarg"          "iftex"           
#>  [46] "ifxetex"          "inconsolata"      "jknapltx"        
#>  [49] "knuth-lib"        "kpathsea"         "kpathsea"        
#>  [52] "l3kernel"         "l3packages"       "latex"           
#>  [55] "latex-bin"        "latex-bin"        "latex-fonts"     
#>  [58] "latexconfig"      "latexmk"          "latexmk"         
#>  [61] "lm"               "lm-math"          "lualibs"         
#>  [64] "luaotfload"       "luaotfload"       "luatex"          
#>  [67] "luatex"           "makeindex"        "makeindex"       
#>  [70] "mathpazo"         "mathspec"         "mdwtools"        
#>  [73] "metafont"         "metafont"         "mfware"          
#>  [76] "mfware"           "microtype"        "ms"              
#>  [79] "natbib"           "ncntrsbk"         "oberdiek"        
#>  [82] "paralist"         "parskip"          "pdfcrop"         
#>  [85] "pdfcrop"          "pdftex"           "pdftex"          
#>  [88] "pgf"              "placeins"         "plain"           
#>  [91] "preview"          "psnfss"           "rsfs"            
#>  [94] "sauerj"           "scheme-infraonly" "setspace"        
#>  [97] "sourcecodepro"    "subfig"           "tetex"           
#> [100] "tetex"            "tex"              "tex-ini-files"   
#> [103] "tex"              "tex4ht"           "tex4ht"          
#> [106] "texlive"          "texlive"          "times"           
#> [109] "tipa"             "titling"          "tocbibind"       
#> [112] "tocloft"          "tools"            "trimspaces"      
#> [115] "ttfutils"         "ttfutils"         "tufte-latex"     
#> [118] "type1cm"          "ucs"              "ulem"            
#> [121] "unicode-data"     "units"            "upquote"         
#> [124] "url"              "xcolor"           "xecjk"           
#> [127] "xetex"            "xetex"            "xetexconfig"     
#> [130] "xifthen"          "xkeyval"          "xunicode"        
#> [133] "zapfding"         "zhnumber"
capabilities()
#>        jpeg         png        tiff       tcltk         X11        aqua 
#>        TRUE        TRUE        TRUE        TRUE       FALSE       FALSE 
#>    http/ftp     sockets      libxml        fifo      cledit       iconv 
#>        TRUE        TRUE        TRUE        TRUE       FALSE        TRUE 
#>         NLS     profmem       cairo         ICU long.double     libcurl 
#>        TRUE        TRUE        TRUE        TRUE        TRUE        TRUE
extSoftVersion()
#>                                       zlib 
#>                                    "1.2.8" 
#>                                      bzlib 
#>                       "1.0.6, 6-Sept-2010" 
#>                                         xz 
#>                               "5.1.0alpha" 
#>                                       PCRE 
#>                          "8.38 2015-11-23" 
#>                                        ICU 
#>                                     "52.1" 
#>                                        TRE 
#>                  "TRE 0.8.0 R_fixes (BSD)" 
#>                                      iconv 
#>                               "glibc 2.19" 
#>                                   readline 
#>                                      "6.3" 
#>                                       BLAS 
#> "/home/travis/R-bin/lib/R/lib/libRblas.so"
names(pdfFonts())
#>  [1] "serif"                  "sans"                  
#>  [3] "mono"                   "AvantGarde"            
#>  [5] "Bookman"                "Courier"               
#>  [7] "Helvetica"              "Helvetica-Narrow"      
#>  [9] "NewCenturySchoolbook"   "Palatino"              
#> [11] "Times"                  "URWGothic"             
#> [13] "URWBookman"             "NimbusMon"             
#> [15] "NimbusSan"              "URWHelvetica"          
#> [17] "NimbusSanCond"          "CenturySch"            
#> [19] "URWPalladio"            "NimbusRom"             
#> [21] "URWTimes"               "ArialMT"               
#> [23] "Japan1"                 "Japan1HeiMin"          
#> [25] "Japan1GothicBBB"        "Japan1Ryumin"          
#> [27] "Korea1"                 "Korea1deb"             
#> [29] "CNS1"                   "GB1"                   
#> [31] "CM Roman"               "CM Roman Asian"        
#> [33] "CM Roman CE"            "CM Roman Cyrillic"     
#> [35] "CM Roman Greek"         "CM Sans"               
#> [37] "CM Sans Asian"          "CM Sans CE"            
#> [39] "CM Sans Cyrillic"       "CM Sans Greek"         
#> [41] "CM Symbol"              "CM Typewriter"         
#> [43] "CM Typewriter Asian"    "CM Typewriter CE"      
#> [45] "CM Typewriter Cyrillic" "CM Typewriter Greek"   
#> [47] "xkcd"
rmarkdown::pandoc_version()
#> [1] '2.3.1'
```

- Windows 下安装

```r
tinytex::install_tinytex(dir = "D:/TinyTeX", force = T,
repository = "https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet")
```

[TinyTeX 安装日志](https://github.com/XiangyunHuang/ISCGwR/files/2226468/TinyTeX.log)

- Ubuntu 下安装

安装指导来自 docker 镜像 rocker/verse 的 [dockerfile](https://hub.docker.com/r/rocker/verse/~/dockerfile/)

```bash
wget "https://travis-bin.yihui.name/texlive-local.deb"
dpkg -i texlive-local.deb
rm texlive-local.deb
apt-get update
apt-get install -y default-jdk ghostscript \
        libbz2-dev libicu-dev liblzma-dev \
        libhunspell-dev libmagick++-dev librdf0-dev \
        libv8-dev libjq-dev qpdf texinfo \
        ssh xz-utils libssh2-dev

wget -qO- \
    "https://github.com/yihui/tinytex/raw/master/tools/install-unx.sh" | sh -s - --admin --no-path
```

## Ubuntu 14.04.5

```bash
# 启用网络
sudo vi /etc/network/interfaces
# 添加
auto eth1
iface eth1 inet dhcp

# 重启 网络
# sudo service network-manager restart
sudo /etc/init.d/networking restart

# 重启虚拟机

# 设置源仓
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
sudo python oh-my-tuna.py --global

# 安装确认 openssh-server 服务
sudo apt install openssh-server
sudo /etc/init.d/ssh start
ps -aux | grep ssh
```

## CentOS 7/ TinyTeX

```bash
## Use tinytex for LaTeX installation
wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | sh -s - --admin --no-path 
sudo mv ~/.TinyTeX /opt/TinyTeX 
sudo /opt/TinyTeX/bin/*/tlmgr path add 
tlmgr install inconsolata tex ae parskip listings 
sudo /opt/TinyTeX/bin/*/tlmgr path add 
```

```r
Rscript -e "tinytex::r_texmf()" 
options(bitmapType = 'cairo')
```

```bash
tlmgr install ctex ms ulem xecjk environ trimspaces \
  zhnumber fandol xltxtra realscripts \
  times helvetic courier
```  

## 安装 Fedora 27 {#fedora}

先从 [清华开源镜像站](https://mirrors.tuna.tsinghua.edu.cn/) 下载 Fedora 镜像 `Fedora-Server-netinst-x86_64-27-1.6.iso` 启动 VBox 分配硬件资源后

<div class="figure" style="text-align: center">
<img src="figures/04n-Fedora-Mini.png" alt="安装 Fedora 迷你版" width="70%" />
<p class="caption">(\#fig:unnamed-chunk-12)安装 Fedora 迷你版</p>
</div>

设置 `root` 账户密码，创建新账户 `cloud2016`

<div class="figure" style="text-align: center">
<img src="figures/04n-Fedora-Install.png" alt="配置账户" width="70%" />
<p class="caption">(\#fig:unnamed-chunk-13)配置账户</p>
</div>

等待直到内核安装配置完成

<div class="figure" style="text-align: center">
<img src="figures/04n-Fedora-Kernel.png" alt="安装完成" width="70%" />
<p class="caption">(\#fig:unnamed-chunk-14)安装完成</p>
</div>

默认在线安装的 Fedora 迷你版， 网络已经配置好， 系统各组件也是最新的， 此时包含的软件列表如下：

```bash
yum list installed
```

[迷你 Fedora 默认安装软件列表](https://github.com/XiangyunHuang/ISCGwR/files/2228186/miniFedoraPackagesList.log)

> 安装了最新版 Fedora 后，系统仓库自带的软件都是比较新的版本，可以直接安装

```bash
sudo yum install openssh-server epel-release
sudo yum install R wget
sudo yum install -y pandoc pandoc-citeproc \
	libcurl-devel openssl-devel libssh2-devel \
	libxml2-devel ImageMagick-c++-devel
sudo yum install -y R gcc gcc-c++ gcc-gfortran \
  libcurl-devel openssl-devel \
  libssh2-devel libxml2-devel pkg-config \
  ImageMagick-c++-devel librsvg2-devel gdal-devel \
  proj-devel proj-epsg proj-nad geos-devel udunits2-devel
  pandoc pandoc-citeproc v8-314-devel
```

```bash
sudo yum install gdal-devel proj-devel \
  proj-epsg proj-nad geos-devel udunits2-devel
```

```r
install.packages("udunits2",configure.args='--with-udunits2-include=/usr/include/udunits2')   
install.packages("sf") 
```

使用 Fedora 最新版系统或者 Rocker 提供的 Docker 镜像，不然需要手动编译安装 GEOS^[<http://trac.osgeo.org/geos>] 和 gdal^[<http://trac.osgeo.org/gdal>]，CentOS 自带的包版本太低，不够 **sf** 包使用，这就是新手面临的痛点。CentOS 仓库自带的依赖库版本有点低，需要手动安装高版本，安装 rgdal 包没有问题，而 sf 包目前处于一种活跃开发状态，且是空间数据分析的新标准，使用的都是新版本的依赖库。


### 安装 TinyTeX {#fedora-tinytex}

从最初的命令行开始

```bash
wget -qO- "https://github.com/yihui/tinytex/raw/master/tools/install-unx.sh" | sh
```

由于 Fedora 27 自带的 texlive 功能比较全，TinyTeX 变成可选项，默认安装目录为 `~/.TinyTeX`

```bash
yum install perl-Digest-MD5
```

```r
devtools::install_github('yihui/tinytex')
tinytex::install_tinytex(TRUE, repository = 'http://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet')
# tinytex::install_tinytex(force = TRUE) # 若之前安装过 TinyTeX
```

修改 .bashrc

```bash
PATH=/home/cloud2016/.TinyTeX/bin/x86_64-linux:$PATH; export PATH
MANPATH=/home/cloud2016/.TinyTeX/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/home/cloud2016/.TinyTeX/texmf-dist/doc/man:$INFOPATH; export INFOPATH
```

使环境变量设置生效

```bash
source ~/.bashrc
```

安装常用 tex 包，主要处理中文和代码字体

```bash
tlmgr install fontspec ctex tex inconsolata \
      cjk zhnumber fandol xecjk environ ulem trimspaces \
      sourcesanspro sourcecodepro appendix \
      zhspacing metalogo realscripts xltxtra \
      times helvetic courier inconsolata
```

还需要安装一些 TeX 包，才能编译出中文 PDF 文档

```bash
tlmgr install ctex ms ulem xecjk environ trimspaces \
  zhnumber fandol xltxtra realscripts
```

`.Rprofile` 设置如下

```r
Sys.setenv(PATH = "/home/cloud2016/.TinyTeX/bin/x86_64-linux:
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin" )
options( bitmapType = 'cairo' )
```

查看 R 进程信息

```r
sessionInfo()
```

```
R version 3.4.3 (2017-11-30)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Fedora 27 (Twenty Seven)

Matrix products: default
BLAS: /usr/local/lib64/R/lib/libRblas.so
LAPACK: /usr/local/lib64/R/lib/libRlapack.so

locale:
 [1] LC_CTYPE=zh_CN.UTF-8       LC_NUMERIC=C
 [3] LC_TIME=zh_CN.UTF-8        LC_COLLATE=zh_CN.UTF-8
 [5] LC_MONETARY=zh_CN.UTF-8    LC_MESSAGES=zh_CN.UTF-8
 [7] LC_PAPER=zh_CN.UTF-8       LC_NAME=C
 [9] LC_ADDRESS=C               LC_TELEPHONE=C
[11] LC_MEASUREMENT=zh_CN.UTF-8 LC_IDENTIFICATION=C

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base

loaded via a namespace (and not attached):
[1] compiler_3.4.3 tools_3.4.3    tinytex_0.2.3
```

### 安装 RStudio {#fedora-rstudio}

以管理员账户登录系统，下载安装 RStudio Server 开源版本

```bash
wget https://download2.rstudio.org/rstudio-server-rhel-1.1.383-x86_64.rpm
sudo yum install --nogpgcheck rstudio-server-rhel-1.1.383-x86_64.rpm
```

RStudio Server 不能以 root 账户登录，下面新建账户

```bash
adduser cloud2016 # 添加用户
passwd cloud2016  # 用户密码设为 cloud
whereis sudoers   # 查找文件位置
chmod -v u+w /etc/sudoers # 给文件 sudoers 添加写权限
vim /etc/sudoers # 添加 cloud2016 管理员权限
chmod -v u-w /etc/sudoers # 收回权限
```

## 安装 R 包 {#install-packages}

- 从指定的镜像站点安装（源头）


```r
install.packages("rbokeh", repos = "https://mirrors.tuna.tsinghua.edu.cn/CRAN/")
```

- 再指定安装的位置（本地）


```r
install.packages("rbokeh",
  repos = c(
    deltarho = "http://packages.deltarho.org",
    getOption("repos")
  ),
  lib = R.home("site-library")
)
```

- 安装 Bioconductor 上的 R 包


```r
source("https://bioconductor.org/biocLite.R")
BiocInstaller::biocLite("rbokeh")
```

- 安装Github上的R包


```r
devtools::install_github("bokeh/rbokeh")
```

- 依赖问题：主要针对离线安装和源码编译安装
- 平台问题：有些 R 包只能装在 Linux 操作系统上
- 软件问题：有些 R 包要求相应 R 软件版本
- 特定库依赖：如 **RDieHarder** \index{RDieHarder} 包就依赖 `libgsl-dev` 和 `libdieharder-dev` 库

所以我们需要查看以下信息

```r
sessionInfo()
# 或者
devtools::session_info("showtext")
```

\BeginKnitrBlock{rmdnote}<div class="rmdnote">推荐 `devtools::session_info("package")` 而不是 `sessionInfo()`，尤其在遇到因为版本不对而带来错误的时候，如 <https://d.cosx.org/d/419765-showtext></div>\EndKnitrBlock{rmdnote}

### magick {#magick}

在 Ubuntu 14.04 (trusty) or 16.04 (xenial) 可以获得最新的 libmagick++-dev 库

```bash
sudo add-apt-repository -y ppa:opencpu/imagemagick
sudo apt-get update
sudo apt-get install -y libmagick++-dev 
```


```r
tools::dependsOnPkgs("magick", installed = db)
#>  [1] "carbonate"        "FloodMapper"      "ggimage"         
#>  [4] "lime"             "mathpix"          "meme"            
#>  [7] "metaDigitise"     "MSbox"            "MtreeRing"       
#> [10] "multipanelfigure" "r4lineups"        "splashr"         
#> [13] "texPreview"       "hexSticker"
```

### V8 {#v8}

Ubuntu

```bash
sudo apt install libv8-3.14-dev
```

CentOS

```bash
sudo yum install v8-314-devel
```

直接或间接依赖 **V8** 的 R 包


```r
tools::dependsOnPkgs("V8", installed = db)
#>  [1] "ajv"                    "colormap"              
#>  [3] "concaveman"             "daff"                  
#>  [5] "dagitty"                "DiagrammeRsvg"         
#>  [7] "DOT"                    "geojsonio"             
#>  [9] "geojsonlint"            "gfer"                  
#> [11] "js"                     "jsonld"                
#> [13] "jsonvalidate"           "lawn"                  
#> [15] "lutz"                   "minimist"              
#> [17] "randomcoloR"            "rchess"                
#> [19] "rjade"                  "rmapshaper"            
#> [21] "suncalc"                "uaparserjs"            
#> [23] "wellknown"              "ALA4R"                 
#> [25] "antaresViz"             "BiBitR"                
#> [27] "codemetar"              "crawl"                 
#> [29] "CRPClustering"          "CSFA"                  
#> [31] "eechidna"               "fingertipscharts"      
#> [33] "ggdag"                  "lidR"                  
#> [35] "MazamaSpatialUtils"     "mregions"              
#> [37] "netSEM"                 "pcalg"                 
#> [39] "rdflib"                 "repijson"              
#> [41] "rmapzen"                "RSDA"                  
#> [43] "SanzCircos"             "TSstudio"              
#> [45] "webglobe"               "BiDAG"                 
#> [47] "kpcalg"                 "momentuHMM"            
#> [49] "MRPC"                   "pcgen"                 
#> [51] "PWFSLSmoke"             "qtlnet"                
#> [53] "RcmdrPlugin.BiclustGUI" "SID"                   
#> [55] "BayesNetBP"
```

### curl 

```bash
# curl RCurl 包
sudo yum install libcurl-devel
```

### openssl

```bash
# PKI openssl 包
sudo yum install openssl-devel
```

### rJava {#rJava}


**rJava** 开发仓库 <https://github.com/s-u/rJava> 确定安装了 JDK后， 以 root 权限运行

```bash
sudo R CMD javareconf
```

应该输出

```
Java interpreter : /usr/bin/java
Java version     : 1.8.0_171
Java home path   : /usr/lib/jvm/java-8-openjdk-amd64/jre
Java compiler    : /usr/bin/javac
Java headers gen.: /usr/bin/javah
Java archive tool: /usr/bin/jar

trying to compile and link a JNI program
detected JNI cpp flags    : -I$(JAVA_HOME)/../include -I $(JAVA_HOME)/../include/linux
detected JNI linker flags : -L$(JAVA_HOME)/lib/amd64/ser ver -ljvm
gcc -I"/usr/local/lib/R/include" -DNDEBUG -I/usr/lib/jvm /java-8-openjdk-amd64/jre/../include -I/usr/lib/jvm/java -8-openjdk-amd64/jre/../include/linux  -I/usr/local/incl ude   -fpic  -g -O2  -c conftest.c -o conftest.o
gcc -shared -L/usr/local/lib -o conftest.so conftest.o - L/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/server  -ljvm


JAVA_HOME        : /usr/lib/jvm/java-8-openjdk-amd64/jre
Java library path: $(JAVA_HOME)/lib/amd64/server
JNI cpp flags    : -I$(JAVA_HOME)/../include -I$(JAVA_HO ME)/../include/linux
JNI linker flags : -L$(JAVA_HOME)/lib/amd64/server -ljvm
Updating Java configuration in /usr/local/lib/R
Done.
```

然后 `install.packages("rJava")`


```r
tools::dependsOnPkgs("rJava", installed = db, 
                     recursive = F, dependencies = "Imports")
#>  [1] "AWR"                   "AWR.Athena"           
#>  [3] "AWR.Kinesis"           "AWR.KMS"              
#>  [5] "awsjavasdk"            "BACA"                 
#>  [7] "BASiNET"               "BEACH"                
#>  [9] "blkbox"                "boilerpipeR"          
#> [11] "CADStat"               "ChoR"                 
#> [13] "coreNLP"               "DatabaseConnector"    
#> [15] "DatabaseConnectorJars" "DecorateR"            
#> [17] "Deducer"               "DeducerExtras"        
#> [19] "dsa"                   "expands"              
#> [21] "fsdaR"                 "G2Sd"                 
#> [23] "gMCP"                  "hive"                 
#> [25] "jdx"                   "joinXL"               
#> [27] "jsr223"                "KoNLP"                
#> [29] "llama"                 "mailR"                
#> [31] "matchingMarkets"       "mdendro"              
#> [33] "mleap"                 "mutossGUI"            
#> [35] "Myrrix"                "Myrrixjars"           
#> [37] "NoiseFiltersR"         "openNLP"              
#> [39] "openNLPdata"           "OpenStreetMap"        
#> [41] "PortfolioEffectEstim"  "PortfolioEffectHFT"   
#> [43] "prcbench"              "rapidraker"           
#> [45] "Rbgs"                  "rcdk"                 
#> [47] "RFreak"                "RKEA"                 
#> [49] "RKEAjars"              "RKEEL"                
#> [51] "RMOAjars"              "rMouse"               
#> [53] "RWeka"                 "RWekajars"            
#> [55] "RxnSim"                "SqlRender"            
#> [57] "subspace"              "subspaceMOA"          
#> [59] "tabulizer"             "tabulizerjars"        
#> [61] "textmining"            "TSsdmx"               
#> [63] "wordnet"               "XLConnect"            
#> [65] "XLConnectJars"         "xlsx"
```

### devtools {#devtools}

开发仓库 <https://github.com/r-lib/devtools>

```bash
sudo apt-get install libncurses5-dev libreadline-dev libpcre3-dev \ 
    zlib1g-dev libbz2-dev liblzma-dev libicu-dev libssh2-1-dev libgit2-dev
```

png 和 jpeg

```bash
sudo apt-get install libjpeg-dev libpng-dev
```

### colorspace {#colorspace}

从 [R-Forge](http://R-Forge.R-project.org) 安装开发版 **colorspace** 


```r
install.packages("colorspace", repos = "http://R-Forge.R-project.org")
```

### imager

```bash
sudo apt-get install libfftw3-dev libX11-dev libtiff-dev
```

CentOS

```bash
sudo yum install fftw-devel
```

```r
install.packages('imager')
```

https://github.com/dahtah/imager

### sf (CentOS7) {#sf-centos}

```r
wget http://download.osgeo.org/gdal/2.3.1/gdal-2.3.1.tar.gz
tar -xzf gdal-2.3.1.tar.gz
cd gdal-2.3.1
./configure
make
sudo make install
```

checkout you replaced the default gdal:

```bash
echo "/usr/local/lib" > /etc/ld.so.conf.d/libgdal-x86_64.conf
sudo ldconfig # relink to new gdal # need to relogin R
```

install geos-devel for lwgeom

```bash
sudo yum install -y geos-devel
wget http://download.osgeo.org/geos/geos-3.6.3.tar.bz2
tar -xjf geos-3.6.3.tar.bz2
cd geos-3.6.3
./configure
make
sudo make install
sudo ldconfig # relink to new gdal # need to relogin R
```

```bash
sudo yum install udunits2-devel
```

```r
install.packages("udunits2",configure.args='--with-udunits2-include=/usr/include/udunits2/')
```

```bash
sudo yum install postgresql-devel
```

```r
install.packages("RPostgreSQL",dependencies=TRUE)
```

```bash
sudo yum install -y liblwgeom
```

```r
install.packages("lwgeom")
```


### sf {#sf}

开发仓库 <https://github.com/r-spatial/sf>

```bash
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install libudunits2-dev libgdal-dev libgeos-dev libproj-dev 
```


```r
tools::dependsOnPkgs("sf", installed = db)
#>  [1] "amt"                "bcmaps"             "brazilmaps"        
#>  [4] "btb"                "capm"               "cartogram"         
#>  [7] "cartography"        "cdcfluview"         "concaveman"        
#> [10] "crawl"              "cyclestreets"       "eixport"           
#> [13] "EmissV"             "eurostat"           "FedData"           
#> [16] "fingertipscharts"   "geogrid"            "geojsonio"         
#> [19] "ggspatial"          "GWSDAT"             "hydrolinks"        
#> [22] "jpmesh"             "jpndistrict"        "kokudosuuchi"      
#> [25] "LAGOSNE"            "landsepi"           "linemap"           
#> [28] "link2GI"            "lwgeom"             "mapedit"           
#> [31] "mapsapi"            "mapview"            "MODIS"             
#> [34] "NipponMap"          "NLMR"               "nngeo"             
#> [37] "openSTARS"          "Orcs"               "ows4R"             
#> [40] "parlitools"         "qualmap"            "quickmapr"         
#> [43] "RCzechia"           "reproducible"       "rgeopat2"          
#> [46] "rlas"               "rmapshaper"         "rmapzen"           
#> [49] "rnaturalearth"      "rpostgisLT"         "RQGIS"             
#> [52] "sabre"              "sfdct"              "smoothr"           
#> [55] "spatialEco"         "stars"              "statesRcontiguous" 
#> [58] "stplanr"            "tidycensus"         "tidyRSS"           
#> [61] "tidytransit"        "tigris"             "tilegramsR"        
#> [64] "tmap"               "tmaptools"          "trigpoints"        
#> [67] "uavRmp"             "vein"               "velox"             
#> [70] "wunderscraper"      "antaresViz"         "choroplethr"       
#> [73] "CoordinateCleaner"  "countyweather"      "eechidna"          
#> [76] "fieldRS"            "GeNetIt"            "geofacet"          
#> [79] "GmAMisc"            "iotables"           "lidR"              
#> [82] "MazamaSpatialUtils" "momentuHMM"         "ppcSpatial"        
#> [85] "prisonbrief"        "repijson"           "rsMove"            
#> [88] "SpaDES"             "SpaDES.core"        "SpaDES.tools"      
#> [91] "webglobe"           "NetLogoR"           "noaastormevents"   
#> [94] "PWFSLSmoke"         "rUnemploymentData"  "SpaDES.addins"
```

依赖情况是直接导入 **sf** 包的


```r
tools::dependsOnPkgs("sf", installed = db,
                     recursive = F, dependencies = "Imports")
#>  [1] "amt"              "bcmaps"           "brazilmaps"      
#>  [4] "btb"              "capm"             "cartogram"       
#>  [7] "cartography"      "cdcfluview"       "concaveman"      
#> [10] "crawl"            "cyclestreets"     "eixport"         
#> [13] "EmissV"           "eurostat"         "FedData"         
#> [16] "fingertipscharts" "geogrid"          "geojsonio"       
#> [19] "ggspatial"        "GWSDAT"           "hydrolinks"      
#> [22] "jpmesh"           "jpndistrict"      "kokudosuuchi"    
#> [25] "LAGOSNE"          "landsepi"         "linemap"         
#> [28] "link2GI"          "lwgeom"           "mapedit"         
#> [31] "mapsapi"          "mapview"          "MODIS"           
#> [34] "NipponMap"        "NLMR"             "openSTARS"       
#> [37] "Orcs"             "ows4R"            "parlitools"      
#> [40] "qualmap"          "quickmapr"        "RCzechia"        
#> [43] "reproducible"     "rgeopat2"         "rlas"            
#> [46] "rmapshaper"       "rmapzen"          "rnaturalearth"   
#> [49] "rpostgisLT"       "RQGIS"            "sabre"           
#> [52] "sfdct"            "smoothr"          "spatialEco"      
#> [55] "stplanr"          "tidycensus"       "tidyRSS"         
#> [58] "tidytransit"      "tigris"           "tmap"            
#> [61] "tmaptools"        "trigpoints"       "uavRmp"          
#> [64] "vein"             "velox"            "wunderscraper"
```


### lwgeom {#lwgeom}

开发仓库 <https://github.com/r-spatial/lwgeom>

```bash
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install libgdal-dev libgeos-dev libproj-dev \
     libudunits2-dev liblwgeom-dev
```

安装完上述库后，还可以安装 rgdal 和 udunits2^[最新开发版 <ftp://ftp.unidata.ucar.edu/pub/udunits>]

安装 udunits2 可能需要指定开发文件位置

```r
install.packages("udunits2",configure.args='--with-udunits2-include=/usr/include/udunits2')
--configure-args='--with-udunits2-lib=/usr/local/lib'  UDUNITS2_LIB
--configure-args='--with-udunits2-include=/usr/include/udunits2'  UDUNITS2_INCLUDE
```


### tmap {#tmap}

在 Ubuntu 16.04 下

```bash
# install fundamental spatial libraries (needed for sf, sp, rgdal, rgeos)
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install libudunits2-dev libgdal-dev libgeos-dev libproj-dev 

# install v8, needed for the R package V8 which reverse imports geojsonio and rmapshaper -> tmaptools -> tmap
sudo apt-get install libv8-3.14-dev


# install jq, needed for the R package jqr whith reverse imports: geojson -> geojsonio -> rmapshaper -> tmaptools -> tmap
sudo add-apt-repository -y ppa:opencpu/jq
sudo apt-get update -q
sudo apt-get install -y libjq-dev

# install libraries needed for the R package protolite, which reverse imports: geojson -> geojsonio -> rmapshaper -> tmaptools -> tmap
sudo apt-get install -y libprotobuf-dev protobuf-compiler

# other libraries
sudo apt-get install libssl-dev
sudo apt-get install libcairo2-dev
```

在 Ubuntu 17/18 下

```bash
sudo apt-get install libgdal-dev libgeos-dev  libproj-dev  libudunits2-dev \
    libv8-dev  libjq-dev  libprotobuf-dev  protobuf-compiler \
    libssl-dev libcairo2-dev
```


### rstan {#rstan}

目前二进制版的 rstan 只在 Ubuntu 14.04 (trusty) or 16.04 (xenial) 上提供，自己编译的话，可以参考 rstan 仓库的 Wiki^[<https://github.com/stan-dev/rstan/wiki/Installing-RStan-on-Mac-or-Linux>]。 

```bash
# Add marutter's c2d4u repository, (and rrutter for CRAN builds too)
sudo add-apt-repository -y "ppa:marutter/rrutter"
sudo add-apt-repository -y "ppa:marutter/c2d4u"
sudo apt-get update
sudo apt-get install r-cran-rstan
```

Ubuntu 18.04 bionic

```bash
sudo add-apt-repository ppa:marutter/c2d4u3.5
sudo apt-get update
```

### Rmpfr

```bash
sudo apt-get install libmpfr-dev
```

```r
install.packages("Rmpfr")
```

### openssl {#openssl}

开发仓库 <https://github.com/jeroen/openssl>

```bash
sudo apt-get install -y libssl-dev
```

### webshot

```bash
sudo apt install phantomjs
```
```r
install.packages("webshot")
```

### gifski

```bash
sudo apt-get install cargo
```

```r
install.packages('gifski')
```

开发版 knitr 支持 <https://yihui.name/en/2018/08/gifski-knitr/>

### RDieHarder {#RDieHarder}

有关随机数检验的一本好书 [@Goucher2009]，以及 StackOverflow 上关于[随机数分析的探讨](https://stackoverflow.com/questions/4027756/random-number-analysis/4027781)，统计之都^[<https://cosx.org/>]上 [随机数生成及其在统计模拟中的应用](https://cosx.org/2017/05/random-number-generation/)


```bash
sudo apt-get install -y libgsl-dev libdieharder-dev
```

CentOS 下安装过程

```bash
sudo yum install gsl gsl-devel dieharder dieharder-devel dieharder-libs
```

```r
install.packages("RDieHarder",configure.args='--with-dieharder-lib=/usr/lib/libdieharder')
```

dieharder 命令帮助 `dieharder h`

```bash
dieharder -l
```

查看 `Test Number`为 15的检验

```bash
dieharder -d 15
```

15号检验的说明

```bash
dieharder -d 15 -h
```

### rgl {#rgl}

```bash
sudo add-apt-repository ppa:marutter/rrutter
sudo apt-get update
sudo apt-get install r-cran-rgl
```

或者

```bash
sudo apt-get install libcgal-dev libglu1-mesa-dev libglu1-mesa-dev libx11-dev
```

CentOS 上安装 rgl

```bash
sudo yum install mesa-libGLU mesa-libGLU-devel
```


### INLA {#INLA}

```r
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
# 选择就近的站点
chooseBioCmirror()
chooseCRANmirror()
biocLite(c("Rgraphviz", "graph"), ask = FALSE)
install.packages("INLA", repos = c(getOption("repos"), INLA = "https://inla.r-inla-download.org/R/stable"), dep = TRUE)
```

### sparklyr


```r
library(sparklyr)
# spark_available_versions()
spark_install(version = "2.2.0", hadoop_version = "2.7")
```

### mxnet


```bash
sudo apt-get install -y libatlas-base-dev liblapack-dev libopencv-dev libjemalloc-dev

git clone --depth=1 --branch=master https://github.com/apache/incubator-mxnet

cd incubator-mxnet
git submodule update --init --recursive 

make -j2 USE_OPENCV=1 USE_BLAS=atlas
```

```r
devtools::install_deps('path/to/R-package')
```

```bash
make rpkg
```

### 环境 {#environment}


```r
libcurlVersion()
#> [1] "7.43.0"
#> attr(,"ssl_version")
#> [1] "OpenSSL/1.0.1f"
#> attr(,"libssh_version")
#> [1] ""
#> attr(,"protocols")
#>  [1] "dict"   "file"   "ftp"    "ftps"   "gopher" "http"   "https" 
#>  [8] "imap"   "imaps"  "ldap"   "ldaps"  "pop3"   "pop3s"  "rtmp"  
#> [15] "rtsp"   "smb"    "smbs"   "smtp"   "smtps"  "telnet" "tftp"
.Library
#> [1] "/home/travis/R-bin/lib/R/library"
.Library.site
#> [1] "/usr/local/lib/R/site-library"

La_version()
#> [1] "3.8.0"
La_library()
#> [1] "/home/travis/R-bin/lib/R/lib/libRlapack.so"

extSoftVersion()
#>                                       zlib 
#>                                    "1.2.8" 
#>                                      bzlib 
#>                       "1.0.6, 6-Sept-2010" 
#>                                         xz 
#>                               "5.1.0alpha" 
#>                                       PCRE 
#>                          "8.38 2015-11-23" 
#>                                        ICU 
#>                                     "52.1" 
#>                                        TRE 
#>                  "TRE 0.8.0 R_fixes (BSD)" 
#>                                      iconv 
#>                               "glibc 2.19" 
#>                                   readline 
#>                                      "6.3" 
#>                                       BLAS 
#> "/home/travis/R-bin/lib/R/lib/libRblas.so"
.Machine
#> $double.eps
#> [1] 2.22e-16
#> 
#> $double.neg.eps
#> [1] 1.11e-16
#> 
#> $double.xmin
#> [1] 2.23e-308
#> 
#> $double.xmax
#> [1] 1.8e+308
#> 
#> $double.base
#> [1] 2
#> 
#> $double.digits
#> [1] 53
#> 
#> $double.rounding
#> [1] 5
#> 
#> $double.guard
#> [1] 0
#> 
#> $double.ulp.digits
#> [1] -52
#> 
#> $double.neg.ulp.digits
#> [1] -53
#> 
#> $double.exponent
#> [1] 11
#> 
#> $double.min.exp
#> [1] -1022
#> 
#> $double.max.exp
#> [1] 1024
#> 
#> $integer.max
#> [1] 2147483647
#> 
#> $sizeof.long
#> [1] 8
#> 
#> $sizeof.longlong
#> [1] 8
#> 
#> $sizeof.longdouble
#> [1] 16
#> 
#> $sizeof.pointer
#> [1] 8
.Platform
#> $OS.type
#> [1] "unix"
#> 
#> $file.sep
#> [1] "/"
#> 
#> $dynlib.ext
#> [1] ".so"
#> 
#> $GUI
#> [1] "X11"
#> 
#> $endian
#> [1] "little"
#> 
#> $pkgType
#> [1] "source"
#> 
#> $path.sep
#> [1] ":"
#> 
#> $r_arch
#> [1] ""
.Device
#> [1] "png"
#> attr(,"filepath")
#> [1] "/tmp/RtmpgNyBZC/file4f5b57980871"

Sys.localeconv()
#>     decimal_point     thousands_sep          grouping   int_curr_symbol 
#>               "."               ","        "\003\003"            "USD " 
#>   currency_symbol mon_decimal_point mon_thousands_sep      mon_grouping 
#>               "$"               "."               ","        "\003\003" 
#>     positive_sign     negative_sign   int_frac_digits       frac_digits 
#>                ""               "-"               "2"               "2" 
#>     p_cs_precedes    p_sep_by_space     n_cs_precedes    n_sep_by_space 
#>               "1"               "0"               "1"               "0" 
#>       p_sign_posn       n_sign_posn 
#>               "1"               "1"
Sys.info()
#>                                                sysname 
#>                                                "Linux" 
#>                                                release 
#>                                    "4.4.0-101-generic" 
#>                                                version 
#> "#124~14.04.1-Ubuntu SMP Fri Nov 10 19:05:36 UTC 2017" 
#>                                               nodename 
#>      "travis-job-375b0836-e457-4ecb-85bb-a651826cd49b" 
#>                                                machine 
#>                                               "x86_64" 
#>                                                  login 
#>                                               "travis" 
#>                                                   user 
#>                                               "travis" 
#>                                         effective_user 
#>                                               "travis"
Sys.getenv()
#> _R_CHECK_CRAN_INCOMING_
#>                       false
#> _system_arch          x86_64
#> _system_name          Ubuntu
#> _system_type          Linux
#> _system_version       14.04
#> ANSI_CLEAR            \033[0K
#> ANSI_GREEN            \033[32;1m
#> ANSI_RED              \033[31;1m
#> ANSI_RESET            \033[0m
#> ANSI_YELLOW           \033[33;1m
#> CASHER_DIR            /home/travis/.casher
#> CI                    true
#> COMPOSER_NO_INTERACTION
#>                       1
#> CONTINUOUS_INTEGRATION
#>                       true
#> DEBIAN_FRONTEND       noninteractive
#> EDITOR                vi
#> ELIXIR_VERSION        1.3.2
#> GEM_HOME              /home/travis/.rvm/gems/ruby-2.4.1
#> GEM_PATH              /home/travis/.rvm/gems/ruby-2.4.1:/home/travis/.rvm/gems/ruby-2.4.1@global
#> GIT_ASKPASS           echo
#> GITHUB_PAT            40f2bfbeb715cf3b23caf46efdcfca0891ef9c60
#> GITHUB_TOKEN          c781915c4fb8ae16a618a331f97bb02f2a7c6028
#> GOPATH                /home/travis/gopath
#> GOROOT                /home/travis/.gimme/versions/go1.7.4.linux.amd64
#> HAS_ANTARES_THREE_LITTLE_FRONZIES_BADGE
#>                       true
#> HAS_JOSH_K_SEAL_OF_APPROVAL
#>                       true
#> HISTCONTROL           ignoredups:ignorespace
#> HISTFILESIZE          2000
#> HISTSIZE              1000
#> HOME                  /home/travis
#> IRBRC                 /home/travis/.rvm/rubies/ruby-2.4.1/.irbrc
#> JAVA_HOME             /usr/lib/jvm/java-8-oracle
#> JDK_SWITCHER_DEFAULT
#>                       oraclejdk8
#> JRUBY_OPTS            --client -J-XX:+TieredCompilation
#>                       -J-XX:TieredStopAtLevel=1 -J-Xss2m
#>                       -Xcompile.invokedynamic=false
#> LANG                  en_US.UTF-8
#> LC_ALL                en_US.UTF-8
#> LC_CTYPE              en_US.UTF-8
#> LD_LIBRARY_PATH       /home/travis/R-bin/lib/R/lib:/home/travis/R-bin/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/java-8-oracle/jre/lib/amd64/server:/home/travis/R-bin/lib/R/lib:/home/travis/R-bin/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/java-8-oracle/jre/lib/amd64/server:/home/travis/R-bin/lib:
#> LN_S                  ln -s
#> LOGNAME               travis
#> MAIL                  /var/mail/travis
#> MAKE                  make
#> MANPATH               /home/travis/.nvm/versions/node/v8.12.0/share/man:/home/travis/.kiex/elixirs/elixir-1.3.2/man:/home/travis/.rvm/rubies/ruby-2.4.1/share/man:/usr/local/man:/usr/local/cmake-3.9.2/man:/usr/local/clang-5.0.0/share/man:/usr/local/share/man:/usr/share/man:/home/travis/.rvm/man
#> MAPBOX_TOKEN          pk.eyJ1IjoieGlhbmd5dW4iLCJhIjoiY2pldjlxMzZxN2ZyajJ4bzdmcWo4bThzYyJ9.Mz39qloW-6Vww9LlCIuzJQ
#> MERB_ENV              test
#> MIX_ARCHIVES          /home/travis/.kiex/mix/elixir-1.3.2
#> MY_RUBY_HOME          /home/travis/.rvm/rubies/ruby-2.4.1
#> MYSQL_UNIX_PORT       /var/run/mysqld/mysqld.sock
#> NETLIFY_AUTH_TOKEN    2b6ccefb921dda31f2195238f7f4bc2ff9c83fb2e2658bb35e001e6fc16e7702
#> NETLIFY_SITE_ID       de757485-0baf-459c-8ff1-3a596413e25b
#> NODE_VERSION          8.12.0
#> NOT_CRAN              true
#> NVM_BIN               /home/travis/.nvm/versions/node/v8.12.0/bin
#> NVM_CD_FLAGS          
#> NVM_DIR               /home/travis/.nvm
#> PAGER                 cat
#> PATH                  /usr/bin://home/travis/.TinyTeX/bin/x86_64-linux:/home/travis/.rvm/gems/ruby-2.4.1/bin:/home/travis/.rvm/gems/ruby-2.4.1@global/bin:/home/travis/.rvm/rubies/ruby-2.4.1/bin:/home/travis/.rvm/bin:/home/travis/R-bin/bin:/home/travis/bin:/home/travis/.local/bin:/opt/pyenv/shims:/home/travis/.phpenv/shims:/home/travis/perl5/perlbrew/bin:/home/travis/.nvm/versions/node/v8.12.0/bin:/home/travis/.kiex/elixirs/elixir-1.3.2/bin:/home/travis/.kiex/bin:/home/travis/gopath/bin:/home/travis/.gimme/versions/go1.7.4.linux.amd64/bin:/usr/local/phantomjs/bin:/usr/local/phantomjs:/usr/local/neo4j-3.2.7/bin:/usr/local/cmake-3.9.2/bin:/usr/local/clang-5.0.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ghc/bin:/home/travis/.phpenv/bin:/opt/pyenv/bin:/home/travis/.yarn/bin
#> PERLBREW_BASHRC_VERSION
#>                       0.80
#> PERLBREW_HOME         /home/travis/.perlbrew
#> PERLBREW_ROOT         /home/travis/perl5/perlbrew
#> PS4                   +
#> PWD                   /home/travis/build/XiangyunHuang/notesdown
#> PYENV_ROOT            /opt/pyenv
#> PYENV_SHELL           bash
#> PYTHON_CFLAGS         -g -fstack-protector
#>                       --param=ssp-buffer-size=4 -Wformat
#>                       -Werror=format-security
#> PYTHON_CONFIGURE_OPTS
#>                       --enable-unicode=ucs4 --with-wide-unicode
#>                       --enable-shared --enable-ipv6
#>                       --enable-loadable-sqlite-extensions
#>                       --with-computed-gotos
#> R_ARCH                
#> R_BROWSER             /usr/local/bin/firefox
#> R_BZIPCMD             /bin/bzip2
#> R_DOC_DIR             /home/travis/R-bin/lib/R/doc
#> R_GZIPCMD             /bin/gzip
#> R_HOME                /home/travis/R-bin/lib/R
#> R_INCLUDE_DIR         /home/travis/R-bin/lib/R/include
#> R_LIBS_SITE           /usr/local/lib/R/site-library:/usr/lib/R/site-library
#> R_LIBS_USER           /home/travis/R/Library
#> R_PAPERSIZE           letter
#> R_PAPERSIZE_USER      letter
#> R_PDFVIEWER           /usr/bin/xdg-open
#> R_PLATFORM            x86_64-pc-linux-gnu
#> R_PRINTCMD            
#> R_PROFILE             /home/travis/.Rprofile.site
#> R_RD4PDF              times,inconsolata,hyper
#> R_SESSION_INITIALIZED
#>                       PID=20315:NAME="reticulate"
#> R_SESSION_TMPDIR      /tmp/RtmpgNyBZC
#> R_SHARE_DIR           /home/travis/R-bin/lib/R/share
#> R_SYSTEM_ABI          linux,gcc,gxx,gfortran,?
#> R_TEXI2DVICMD         /usr/bin/texi2dvi
#> R_UNZIPCMD            /usr/bin/unzip
#> R_ZIPCMD              /usr/bin/zip
#> RACK_ENV              test
#> RAILS_ENV             test
#> RBENV_SHELL           bash
#> RUBY_VERSION          ruby-2.4.1
#> rvm_bin_path          /home/travis/.rvm/bin
#> rvm_path              /home/travis/.rvm
#> rvm_prefix            /home/travis
#> rvm_pretty_print_flag
#>                       auto
#> rvm_version           1.29.3 (latest)
#> SED                   /bin/sed
#> SHELL                 /bin/bash
#> SHLVL                 2
#> SSH_CLIENT            10.10.4.7 54050 22
#> SSH_CONNECTION        10.10.4.7 54050 10.20.0.93 22
#> SSH_TTY               /dev/pts/0
#> TAR                   /bin/tar
#> TERM                  xterm
#> TRAVIS                true
#> TRAVIS_ALLOW_FAILURE
#>                       false
#> TRAVIS_APP_HOST       build.travis-ci.org
#> TRAVIS_ARCH           amd64
#> TRAVIS_BRANCH         master
#> TRAVIS_BUILD_DIR      /home/travis/build/XiangyunHuang/notesdown
#> TRAVIS_BUILD_ID       447627346
#> TRAVIS_BUILD_NUMBER   589
#> TRAVIS_BUILD_STAGE_NAME
#>                       
#> TRAVIS_BUILD_WEB_URL
#>                       https://travis-ci.org/XiangyunHuang/notesdown/builds/447627346
#> TRAVIS_CABAL_DEFAULT
#>                       1.24
#> TRAVIS_CABAL_ROOT     /opt/cabal
#> TRAVIS_CMD            Rscript -e
#>                       'bookdown::render_book("index.Rmd")'
#> TRAVIS_COMMIT         1708330c0106fced7d233a64068d01b6ae81113d
#> TRAVIS_COMMIT_MESSAGE
#>                       install RcppOctave
#> TRAVIS_COMMIT_RANGE   e6e180354b3e...1708330c0106
#> TRAVIS_DIST           trusty
#> TRAVIS_ENABLE_INFRA_DETECTION
#>                       true
#> TRAVIS_EVENT_TYPE     push
#> TRAVIS_FILTERED       redirect_io
#> TRAVIS_GHC_DEFAULT    8.0.2
#> TRAVIS_GHC_ROOT       /opt/ghc
#> TRAVIS_HOME           /home/travis
#> TRAVIS_INFRA          gce
#> TRAVIS_INIT           upstart
#> TRAVIS_INTERNAL_RUBY_REGEX
#>                       ^ruby-(2\.[0-2]\.[0-9]|1\.9\.3)
#> TRAVIS_JOB_ID         447627347
#> TRAVIS_JOB_NUMBER     589.1
#> TRAVIS_JOB_WEB_URL    https://travis-ci.org/XiangyunHuang/notesdown/jobs/447627347
#> TRAVIS_LANGUAGE       r
#> TRAVIS_OS_NAME        linux
#> TRAVIS_OSX_IMAGE      
#> TRAVIS_PRE_CHEF_BOOTSTRAP_TIME
#>                       2017-12-05T21:12:11
#> TRAVIS_PULL_REQUEST   false
#> TRAVIS_PULL_REQUEST_BRANCH
#>                       
#> TRAVIS_PULL_REQUEST_SHA
#>                       
#> TRAVIS_PULL_REQUEST_SLUG
#>                       
#> TRAVIS_R_VERSION      3.5.1
#> TRAVIS_R_VERSION_STRING
#>                       release
#> TRAVIS_REPO_SLUG      XiangyunHuang/notesdown
#> TRAVIS_ROOT           /
#> TRAVIS_SECURE_ENV_VARS
#>                       true
#> TRAVIS_STACK_FEATURES
#>                       basic cassandra chromium couchdb
#>                       disabled-ipv6 docker docker-compose
#>                       elasticsearch firefox go-toolchain
#>                       google-chrome jdk memcached mongodb mysql
#>                       neo4j nodejs_interpreter perl_interpreter
#>                       perlbrew phantomjs postgresql
#>                       python_interpreter rabbitmq redis riak
#>                       ruby_interpreter sqlite xserver
#> TRAVIS_STACK_JOB_BOARD_REGISTER
#>                       /.job-board-register.yml
#> TRAVIS_STACK_LANGUAGES
#>                       __amethyst__ crystal csharp d dart elixir
#>                       erlang haskell haxe julia perl perl6 r rust
#> TRAVIS_STACK_NAME     amethyst
#> TRAVIS_STACK_NODE_ATTRIBUTES
#>                       /.node-attributes.yml
#> TRAVIS_STACK_TIMESTAMP
#>                       2017-12-05 21:12:24 UTC
#> TRAVIS_SUDO           true
#> TRAVIS_TAG            
#> TRAVIS_TEST_RESULT    
#> TRAVIS_TIMER_ID       1118b174
#> TRAVIS_TIMER_START_TIME
#>                       1540790593075978086
#> TRAVIS_TMPDIR         /tmp/tmp.oBkODOY4tO
#> TRAVIS_UID            2000
#> TZ                    UTC
#> USER                  travis
#> XDG_RUNTIME_DIR       /run/user/2000
#> XDG_SESSION_ID        2

Sys.getlocale()
#> [1] "en_US.UTF-8"
```

## Docker {#docker}

Docker 相比虚拟机占用资源少，拉起来就可以用，虚拟机还需要各种环境配置，很多与R有关的项目现在都提供Docker镜像，大大方便了开发人员和数据分析师。当然 docker 的环境隔离性，对主机系统侵入小，即使挂了，再拉起来也就是了，安全性和可靠性高。

基于 The Rocker Project^[<https://www.rocker-project.org/>] 快速构建数据分析环境，[Rocker项目](https://github.com/rocker-org/rocker) 站在 [Debian](https://www.debian.org/) 和 [R](https://www.r-project.org/) 的肩膀上，在 [Docker](https://www.docker.com/)内配置众多数据分析和开发的工具，免去用户手动配置的复杂性。此事非有心者不能为之 ，因为需费时费力找寻依赖库，编译 R 包，还要尽可能地给 Docker 镜像减负，以便部署。如果想抢先试水的赶快去 Rocker 项目主页。

- 由 Dirk Eddelbuettel 等人担纲的 Rocker 项目， [项目主页](https://github.com/rocker-org/rocker) 和 [Docker镜像](https://hub.docker.com/u/rocker/) 
- Wei-Chen Chen 等人的大数据编程项目 Programming with Big Data in R， [项目主页](https://rbigdata.github.io/) 和 [Docker 镜像](https://hub.docker.com/u/rbigdata/) 
- [非常详细的docker笔记](http://m.blog.csdn.net/sdgihshdv/article/details/75142367) 
- Dockerfile <https://docs.docker.com/develop/develop-images/dockerfile_best-practices/>
- build <https://docs.docker.com/engine/reference/builder/#usage>

其它容器相关项目有

* Singularity
    + <https://github.com/bwlewis/r-and-singularity>
    + <http://singularity.lbl.gov/>
* Kubernetes
    + Kubernetes 容器集群管理 <https://www.kubernetes.org.cn>
    + 参见高策的博客 <http://gaocegege.com>

### Pull Images

重复实现的关键是拉取一个现有的 Docker 镜像，可以免去安装和环境配置的诸多麻烦。

```bash
docker run --rm -it --name book -e \
 DISPLAY=192.168.99.100:0 -d -p 8282:8787 -e ROOT=TRUE \
 -e USER=rstudio -e PASSWORD=cloud rocker/geospatial
```

`DISPLAY=192.168.99.100:0` 用于启用 X11 设备，否则 rgl 等软件包会报显示警告，`--rm -it` 使得 主机和虚拟机时间一致，否则会有警告^[<https://github.com/rocker-org/rocker/wiki/Allowing-GUI-windows>]

```
# 两个与时间有关的警告
Warning message:
running command 'timedatectl' had status 1 
Failed to create bus connection: No such file or directory
```

<https://stackoverflow.com/questions/43907925/ubuntu-timedatectl-fails-in-docker-container>

```r
capabilities()
 jpeg         png        tiff       tcltk         X11        aqua    http/ftp     sockets      libxml 
 TRUE        TRUE        TRUE        TRUE       FALSE       FALSE        TRUE        TRUE        TRUE 
 fifo      cledit       iconv         NLS     profmem       cairo         ICU long.double     libcurl 
 TRUE        TRUE        TRUE       FALSE        TRUE        TRUE        TRUE        TRUE        TRUE 
```
主机端口号 8282，这里可以改成你自己喜欢的，虚拟机端口号 8787 对应 RStudio Server 默认端口，如果你想自己指定，就去修改 RStudio Server的配置文件。拉取的 Docker 镜像取名 book，这是方便以后启动 docker 时方便，只需

```bash
# 启动
docker start book
# 进入
docker exec -it book bash

docker start rocker
docker ps # 获取容器 ID CONTAINER ID
docker exec -it 6f932357e6ce /bin/bash
```

由于要安装 rstan 和 rstanarm 包，编译的过程中需要比较大的内存空间，默认分配给 docker 的内存要增加到 4 Gb，也就装个软件，大一点的基于 stan 实现的模型，还是适合放在大机器上跑，笔电可以跑跑简单的模型，学习一下就可以了。


### Docker (Windows 8.1) {#windows8}

对于 Windows 8.1 来说，需要下载 [Docker ToolBox for Windows](https://docs.docker.com/toolbox/toolbox_install_windows/) 和 [Boot2Docker](https://github.com/boot2docker/boot2docker)^[目前官方已进入维护模式]，由于 Docker for Windows 需要 Windows 10 Pro，如图 \@ref(fig:docker-installation-error)所示

<div class="figure" style="text-align: center">
<img src="figures/04a-docker-install-error.png" alt="Docker for Windows 需要高版本的 Windows 系统" width="70%" />
<p class="caption">(\#fig:docker-installation-error)Docker for Windows 需要高版本的 Windows 系统</p>
</div>

下载完成后，双击 exe 可执行文件，启动安装过程，如图 \@ref(fig:docker-install) 所示，VirtualBox 和 Git 是否勾选取决于在此之前系统是否已经安装了这两个组件， Kitematic (Docker GUI) 在 Windows 8.1 下没什么用，取消勾选。创建快捷方式和添加路径到系统 PATH 环境变量，取消勾选升级 Boot2Docker VM，因为我们在 GitHub 上下载了最新版 Boot2Docker， 安装完成后替换即可。

<div class="figure" style="text-align: center">
<img src="figures/04a-docker-custom-installation.png" alt="自定义 Docker 安装过程" width="45%" /><img src="figures/04b-docker-shortcut.png" alt="自定义 Docker 安装过程" width="45%" />
<p class="caption">(\#fig:docker-install)自定义 Docker 安装过程</p>
</div>

此外，安装过程中可能弹出，如图\@ref(fig:docker-driver) 所示的对话框，选择安装即可

<div class="figure" style="text-align: center">
<img src="figures/04c-docker-drivers.png" alt="安装驱动" width="70%" />
<p class="caption">(\#fig:docker-driver)安装驱动</p>
</div>

安装完成后，就可以将 Docker ToolBox 目录下的 Boot2Docker 替换，如图 \@ref(fig:docker-dir) 所示

<div class="figure" style="text-align: center">
<img src="figures/04d-docker-dir.png" alt="Docker ToolBox 的安装目录" width="70%" />
<p class="caption">(\#fig:docker-dir)Docker ToolBox 的安装目录</p>
</div>

 **拉取镜像**

在启动桌面快捷方式（如图\@ref(fig:docker-shortcut)所示）之前，非常重要的一步是设置镜像在磁盘上的存放位置（因为默认位置是C盘），在用户主目录下新建 `.bash_profile` 文件，并且添加如下一行

```bash
export MACHINE_STORAGE_PATH='D:\Docker'
```

<div class="figure" style="text-align: center">
<img src="figures/04j-docker-shortcut.png" alt="双击桌面快捷方式启动Docker" width="35%" />
<p class="caption">(\#fig:docker-shortcut)双击桌面快捷方式启动Docker</p>
</div>

启动后，如图\@ref(fig:start-docker) 所示， [Docker 初始化完整日志](https://github.com/XiangyunHuang/ISCGwR/files/2226477/docker.log)

<div class="figure" style="text-align: center">
<img src="figures/04k-start-docker.png" alt="Docker 启动完成" width="70%" />
<p class="caption">(\#fig:start-docker)Docker 启动完成</p>
</div>

在 Windows 系统上，查看 IP

```bash
docker-machine ip default
```

Docker-based Geospatial toolkit for R, built on versioned Rocker images. 开发仓库 <https://github.com/rocker-org/geospatial>

```bash
docker run --name book -d -p 8282:8787 -e ROOT=TRUE \
 -e USER=rstudio -e PASSWORD=cloud rocker/geospatial
```

`8787` 端口给 RStudio Server 使用，`8282` 端口用于浏览器登录 RStudio 使用。`8787` 端口也是可以自定义的，方法是修改 `/etc/rstudio/rserver.conf` 文件^[<http://docs.rstudio.com/ide/server-pro/access-and-security.html>]，如设置

```
www-port=8080
```

那么，拉取镜像的命令相应地改为

```bash
docker run --name book -d -p 8282:8080 -e ROOT=TRUE \
 -e USER=rstudio -e PASSWORD=cloud rocker/geospatial
```

如图 \@ref(fig:docker-pull) 所示，就是将主机端口号 `8787` 映射给容器内的 `8282` 端口

<div class="figure" style="text-align: center">
<img src="figures/04e-docker-pull-image.png" alt="拉取 Docker 镜像" width="70%" />
<p class="caption">(\#fig:docker-pull)拉取 Docker 镜像</p>
</div>

其实，也可以在 Git Bash 中拉取镜像，

```bash
# 启动 Docker
docker-machine start
# 进入 Bash 
docker-machine ssh default
```

<div class="figure" style="text-align: center">
<img src="figures/04g-docker-pull-image-git-bash.png" alt="在 Git Bash 中拉取 Docker 镜像" width="70%" />
<p class="caption">(\#fig:docker-pull-git)在 Git Bash 中拉取 Docker 镜像</p>
</div>

### PuTTY {#putty-login-docker}

首先在 PuTTY 中设置分配给 Docker 的 IP

<div class="figure" style="text-align: center">
<img src="figures/04l-PuTTY-login.png" alt="设置 IP 地址" width="70%" />
<p class="caption">(\#fig:set-ip)设置 IP 地址</p>
</div>

PuTTY 登陆虚拟机或者 Docker，初次登陆会要求授权

<div class="figure" style="text-align: center">
<img src="figures/04h-PuTTY-Security.png" alt="安全连接认证" width="70%" />
<p class="caption">(\#fig:security)安全连接认证</p>
</div>

我们可以看到，PuTTY 显示的 IP 和虚拟机保持一致

<div class="figure" style="text-align: center">
<img src="figures/04i-PuTTY-login.png" alt="登陆" width="70%" />
<p class="caption">(\#fig:login)登陆</p>
</div>

我们也可以在 PuTTY 中拉取 Docker 镜像了，如图 \@ref(fig:docker-pull-via-putty) 所示

<div class="figure" style="text-align: center">
<img src="figures/04m-docker-pull-image-via-putty.png" alt="PuTTY 里拉取Docker镜像" width="33%" /><img src="figures/04m-docker-pull-finish.png" alt="PuTTY 里拉取Docker镜像" width="33%" />
<p class="caption">(\#fig:docker-pull-via-putty)PuTTY 里拉取Docker镜像</p>
</div>


### Docker (CentOS)

安装必要的依赖

```bash
sudo yum install -y yum-utils \
  device-mapper-persistent-data lvm2
```

添加 repo源

```bash
sudo yum-config-manager --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
```

软件仓库替换为TUNA以加快下载速度

```bash
sudo sed -i 's+download.docker.com+mirrors.tuna.tsinghua.edu.cn/docker-ce+' /etc/yum.repos.d/docker-ce.repo
```

可选项 `sudo yum-config-manager --disable docker-ce-edge` 或
`sudo yum-config-manager --enable docker-ce-edge`

安装 docker-ce

```bash
sudo yum install docker-ce
```

查看可用的docker-ce版本

```bash
yum list docker-ce --showduplicates | sort -r
```

安装的是目前最新版本 `docker-ce.x86_64 0:17.09.0.ce-1.el7.centos`         

拉取 Docker 镜像 `rocker/geospatial`，创建指定用户及密码，授予用户 root 权限，设置共享目录，每次启动都检查更新、配置IP等造成启动时间长，再配置自己的环境

- 启动 Docker

```bash
sudo service docker start
sudo docker info  
```

- 拉取 `rocker/geospatial` 镜像，如图 \@ref(fig:docker-centos)

```bash
sudo docker run -d -p 8787:8787 -e ROOT=TRUE \
-e USER=xiangyun -e PASSWORD=cloud \
rocker/geospatial
```

<div class="figure" style="text-align: center">
<img src="figures/04f-docker-centos.png" alt="CentOS 上 Docker 安装" width="70%" />
<p class="caption">(\#fig:docker-centos)CentOS 上 Docker 安装</p>
</div>

### 常用命令 {#common-commands}

- 拉取 docker pull
- 启动 docker start
- 运行 docker run
- 移除 docker rm(i)



## 机器学习 or 深度学习 {#deep-learning-library}

deep learning from first principles in python r and octave <https://gigadom.wordpress.com>

### DMTK

[LightGBM](https://github.com/Microsoft/LightGBM/tree/master/R-package) A fast, distributed, high performance gradient boosting (GBDT, GBRT, GBM or MART) framework based on decision tree algorithms, used for ranking, classification and many other machine learning tasks.

提供了 R 包，微软的工具主要支持Windows平台和VS编译工具。顺便一提，[LightLDA](https://github.com/Microsoft/lightlda)^[第一作者为袁进辉] Scalable, fast, and lightweight system for large-scale topic modeling 大规模主题模型

微软开发仓库 <https://github.com/Microsoft>

### TensorFlow 

开发仓库 <https://github.com/tensorflow/tensorflow>

Computation using data flow graphs for scalable machine learning. TensorFlow is an open source software library for numerical computation using data flow graphs. 

RStudio 公司开发了 R 包接口 [tensorflow](https://github.com/rstudio/tensorflow) 和 [keras](https://github.com/rstudio/keras)


### Apache MXNet

开发仓库 <https://github.com/apache/incubator-mxnet>

Lightweight, Portable, Flexible Distributed/Mobile Deep Learning with Dynamic, Mutation-aware Dataflow Dep Scheduler; for Python, R, Julia, Scala, Go, Javascript and more

R 包 <https://github.com/apache/incubator-mxnet/tree/master/R-package>


### XGBoost

开发仓库 <https://github.com/dmlc/xgboost>
XGBoost is an optimized distributed gradient boosting library designed to be highly efficient, flexible and portable. It implements machine learning algorithms under the Gradient Boosting framework. XGBoost provides a parallel tree boosting (also known as GBDT, GBM) that solve many data science problems in a fast and accurate way. The same code runs on major distributed environment (Hadoop, SGE, MPI) and can solve problems beyond billions of examples.

使用文档 <http://xgboost.readthedocs.io/en/latest/>
R 包 <https://github.com/dmlc/xgboost/tree/master/R-package>
中文文档 <http://xgboost.apachecn.org/cn/latest/>

### CatBoost

CatBoost is an open-source gradient boosting on decision trees library with categorical features support out of the box for Python, R https://catboost.ai

<https://github.com/catboost/catboost>

catboost

```r
# windows 
devtools::install_url('https://github.com/catboost/catboost/releases/download/v0.6.1.1/catboost-R-Windows-0.6.1.1.tgz', args = c("--no-multiarch"))
# Ubuntu install libc6-dev first
devtools::install_github('catboost/catboost', subdir = 'catboost/R-package')
```

### xLearn

[xLearn](https://github.com/aksnzhy/xlearn) is a high performance, easy-to-use, and scalable machine learning package, which can be used to solve large-scale machine learning problems. xLearn is especially useful for solving machine learning problems on large-scale sparse data （大规模稀疏数据）, which is very common in Internet services such as online advertisement （在线广告）and recommender systems （推荐系统） in recent years. If you are the user of liblinear, libfm, or libffm, now xLearn is your another better choice.


### XLearning

开发仓库 <https://github.com/Qihoo360/XLearning> AI on Hadoop

XLearning is running on the Hadoop Yarn and has integrated deep learning frameworks such as TensorFlow, MXNet, Caffe, Theano, PyTorch, Keras, XGBoost. 

### GPflow

Gaussian processes in TensorFlow <https://github.com/GPflow/GPflow>
文档 <http://gpflow.readthedocs.io/en/latest/> 提到了 Fully Bayesian inference for generalized GP models with HMC 可以考虑与 Stan 比较性能

相关的框架 [GPflowOpt](https://github.com/GPflow/GPflowOpt) 主要在于贝叶斯框架下的优化计算，相关使用文档见 <https://gpflowopt.readthedocs.io/en/latest>

## 自然语言处理 {#Natural-Language-Processing}

### 文本分类 {#Text-Classification}

1. E-Commerce Reviews 数据集

[Shirin Glander](https://shirinsplayground.netlify.com/) Explaining Black-Box Machine Learning Models: Text classification with LIME [博客文章](https://shirinsplayground.netlify.com/2018/07/explaining_ml_models_code_text_lime/)

[Abien Fred Agarap](https://afagarap.me/) Statistical Analysis on E-Commerce Reviews, with Sentiment Classification using Bidirectional Recurrent Neural Network (RNN) 实现 keras 和 sklearn <https://github.com/AFAgarap/ecommerce-reviews-analysis>

## 书单 {#book-list}

- [Pro Git 中文第二版](https://git-scm.com/book/zh/v2) Scott Chacon, Ben Straub 著
- [Advanced R 第二版](https://adv-r.hadley.nz/) Hadley Wickham 著
- [Geocomputation with R](https://geocompr.robinlovelace.net/) Robin Lovelace, Jakub Nowosad, Jannes Muenchow 著
- [Spatial Microsimulation with R](https://spatial-microsim-book.robinlovelace.net/) Robin Lovelace and Morgane Dumont 著
- [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/) Yihui Xie, J. J. Allaire, Garrett Grolemund 著
- [bookdown: Authoring Books and Technical Documents with R Markdown](https://bookdown.org/yihui/bookdown/) Yihui Xie 著
- [blogdown: Creating Websites with R Markdown](https://bookdown.org/yihui/blogdown/) Yihui Xie, Amber Thomas, Alison Presmanes Hill 著
- [R: A Language and Environment for Statistical Computing](https://xiangyun.netlify.com/pdf/refman.pdf) The R Core Team 著
- [LaTeX2e unofficial reference manual](http://tug.ctan.org/tex-archive/info/latex2e-help-texinfo/latex2e.html) [pdf 版](https://xiangyun.netlify.com/pdf/latex2e.pdf)
- [Statistical Rethinking](http://xcelab.net/rm/statistical-rethinking/)  Richard McElreath 著
- [Regression Modeling Strategies](http://biostat.mc.vanderbilt.edu/wiki/Main/RmS) Frank E Harrell Jr 著
- [Applied Predictive Modeling](http://appliedpredictivemodeling.com/) Max Kuhn and Kjell Johnson 著
- [Forecasting: Principles and Practice](https://www.otexts.org/fpp2/) Rob J Hyndman and George Athanasopoulos 著
- [Applied Regression Analysis and Generalized Linear Models](https://socialsciences.mcmaster.ca/jfox/) 及书评 [JASA-review](https://socialsciences.mcmaster.ca/jfox/Books/Applied-Regression-2E/JASA-review.pdf) 附录、样章和书评位于目录 docs/John-Fox
- [Introduction to Data Science](https://rafalab.github.io/dsbook/) Rafael A. Irizarry 著
- [Feature Engineering and Selection: A Practical Approach for Predictive Models](http://www.feat.engineering) Max Kuhn and Kjell Johnson

## 主页 {#homepage}

- [Eugene Joh 的博客](https://incidental-ideas.org/)
- [Ilya Kashnitsky 的博客](https://ikashnitsky.github.io/)
- [Max Woolf 的博客](http://minimaxir.com/)
- [Yan Holtz 的 ggplot2 图库](https://www.r-graph-gallery.com/)
- [Jianghao Wang (王江浩)](https://jianghao.github.io)
- [Xinpeng Chen](https://chenxinpeng.github.io/)
- [Arthur Charpentier](https://freakonometrics.github.io) 法语 精算 or [Arthur Charpentier](https://freakonometrics.hypotheses.org)
- [François Husson](https://francoishusson.wordpress.com/) 多元统计分析
- [Jean-Paul Fox](http://www.jean-paulfox.com/) Bayesian response modeling
- [Julian faraway](https://farawaystatistics.wordpress.com) INLA [When Small Data beats Big Data](http://people.bath.ac.uk/jjf23/papers/smallvbig.pdf)
- [Shirin Glander](https://shirinsplayground.netlify.com/)
- [Yihui Xie](https://yihui.name/)
- [Beilei Bian](http://statsjoke.me)
- [Miao Yu](https://yufree.cn/)
- [Ce Gao](http://gaocegege.com/Blog/)
- [Lchiffon](http://langdawei.com/)
- [Nan Xiao](https://nanx.me/)
- [Xuening Zhu](https://xueningzhu.github.io/)
- [Guangchuang YU](https://guangchuangyu.github.io/)
- [Qiang Kou](http://qkou.info/)
- [Yixuan Qiu-cn](https://yixuan.cos.name/cn/) or [Yixuan Qiu-en](https://statr.me/)
- [Tao Gao](https://joegaotao.github.io/)
- [Xunmo Yang](https://tcya.xyz/)
- [Yalei Du](http://yalei.name/)
- [Junchen Feng](http://www.fengjunchen.com/)
- [Sizhe Liu](http://www.bjt.name/)
- [Liyun Chen](http://www.loyhome.com/)
- [Peng Zhao](http://www.pzhao.org/zh/)

## 博客 {#blogger}

- [基于分布式容器和高性能计算的R](https://bwlewis.github.io/r-and-singularity/) R and Singularity
- [利用 R 和 OpenCPU 搭建高可用的 HTTP 服务](http://www.bjt.name/2017/04/opencpu-application)
- [Nearest Neighbor Gaussian Processes (NNGP) based models](https://github.com/LuZhangstat/NNGP_STAN) and [Case study: NNGP based models in Stan](http://mc-stan.org/users/documentation/case-studies/nngp.html)
- [Spatial Models in Stan: Intrinsic Auto-Regressive Models for Areal Data](http://mc-stan.org/users/documentation/case-studies/icar_stan.html) 空间模型之 Stan 实现 [slides](https://github.com/stan-dev/stancon_talks/blob/master/2018/Invited-Talks/Morris.pdf)
- [Conditional autoregressive models in Stan](https://github.com/mbjoseph/CARstan) [网页版](http://mc-stan.org/users/documentation/case-studies/mbjoseph-CARStan.html)
- [Bagging, the perfect solution for model instability](https://insightr.wordpress.com/2017/05/22/bagging-the-perfect-solution-for-model-instability/)
- [How Random Forests improve simple Regression Trees?](https://insightr.wordpress.com/2017/09/23/how-random-forests-improve-simple-regression-trees/)
- [Tuning xgboost in R: Part I](https://insightr.wordpress.com/2018/05/17/tuning-xgboost-in-r-part-i/)
- [Tuning xgboost in R: Part II](https://insightr.wordpress.com/2018/07/28/tuning-xgboost-in-r-part-ii/)
- [Easily Make Multi-tabbed .xlsx Files with openxlsx](https://trinkerrstuff.wordpress.com/2018/02/14/easily-make-multi-tabbed-xlsx-files-with-openxlsx/) Map 函数
- [Deep learning at rstudio::conf 2018](https://rviews.rstudio.com/2018/02/14/deep-learning-rstudio-conf-2018/) 深度学习与R语言,J.J.作为 RStudio 的 CEO 推动 tensorflow 在 R 中的使用，两个幻灯片值得好好看，J.J. 介绍 tensorflow Javier Luraschi介绍tf的部署
- netlify travis-ci blog 搭建 blogdown <https://bookdown.org/yihui/blogdown>
- [An Introduction to Spatial Econometrics in R](http://www.econ.uiuc.edu/~lab/workshop/Spatial_in_R.html) spatial econometric analysis 空间经济分析 可考虑翻译一下 <https://ignaciomsarmiento.github.io/2017/02/07/An-Introduction-to-Spatial-Econometrics-in-R>
- [Data Visualization Shiny Apps](https://ignaciomsarmiento.github.io/software.html) 数据可视化核密度估计 In this app I identify crime hotspots using a bivariate density estimation strategy
- [Putting the Macron in Māori: Accented text in R Graphics](https://www.stat.auckland.ac.nz/~paul/Reports/maori/maori.html) Paul Murrell 图形中嵌入重音字符
- [color in plot](https://www.stat.auckland.ac.nz/~paul/Talks/colour.pdf) Paul Murrell 配色
- [Using Computer Modern Fonts in R Graphics](https://www.stat.auckland.ac.nz/~paul/R/CM/CMR.html) Paul Murrell 图形中嵌入数学字体
- [Lattice Graphics](https://www.stat.auckland.ac.nz/~paul/Talks/dsc2001.pdf) Paul Murrell 介绍 Lattice Graphics
- [Association of Statisticians of American Religious Bodies (ASARB) viridis USA map](http://www.rpubs.com/cgarey/ProjectOneFinal)
- [Mapping unemployment data](http://sharpsightlabs.com/blog/map-unemployment-nov-2016/)
- [when-will-evolution-outperform-local-search](https://blog.evorithmics.org/2016/01/31/when-will-evolution-outperform-local-search/) 进化何时跑赢局部搜索 爱可可爱生活--进化如何跑赢局部搜索
- [Game of Thrones network analysis](https://shirinsplayground.netlify.com/2018/03/got_network/) 权利的游戏 网络
- [Using Git and GitHub with R, Rstudio, and R Markdown](https://github.com/jennybc/happy-git-with-r)
- [如何用Markdown写论文](http://blog.sciencenet.cn/blog-377709-1088215.html)
- [blogdown和Github搭建网站](https://aurora-mareviv.github.io/talesofr/2018/02/r-blogdown-setup-in-github-2/)
- [The R-INLA project and Bayesian computing with INLA](http://www.r-inla.org/)
- [Geographic Data Science in Python](https://data.cdrc.ac.uk/dataset/geographic-data-science-in-python)
- [Spatial](https://data.cdrc.ac.uk/)
- [r-spatial](https://www.r-spatial.org/)
- [Fast GeoSpatial Analysis in Python](http://matthewrocklin.com/blog/work/2017/09/21/accelerating-geopandas-1)
- [Spatial Data in R: New Directions](https://edzer.github.io/UseR2017/) Edzer Pebesma
- [A gentle INLA tutorial](https://www.precision-analytics.ca/blog-1/inla)


> 此节附录最后可以删掉

下面是用一段 Python 代码导出谷歌浏览器的所有书签

```bash
python py-chrome-bookmarks-markdown.py bookmarks.md
```

**Optimization**

- [Hyperparameter Optimization in H2O: Grid Search, Random Search and the Future – H2O blog](http://blog.h2o.ai/2016/06/hyperparameter-optimization-in-h2o-grid-search-random-search-and-the-future/)
- [R Optimization Test - Quantitative Finance Collector](http://www.mathfinance.cn/r-optimization-test/)
- [Research Seminar: Optimization](http://statmath.wu.ac.at/courses/optimization/)
- [Home - Statistics Views](http://www.statisticsviews.com/view/index.html)
- [Vasicek model - Wikiwand](https://www.wikiwand.com/en/Vasicek_model)
- [CIR模型Cox–Ingersoll–Ross model - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Cox%E2%80%93Ingersoll%E2%80%93Ross_model)
- [BARON Software | Sahinidis](http://archimedes.cheme.cmu.edu/?q=baron)
- [竞赛列表-DataCastle大数据竞赛平台](http://www.pkbigdata.com/static_page/cmpList.html)
- [COIN-OR: Computational Infrastructure for Operations Research | Open-source Software for the Operations Research Community](https://www.coin-or.org/)
- [Portfolio Optimization in R, Part 4 | R-bloggers](https://www.r-bloggers.com/portfolio-optimization-in-r-part-4/)

**时间序列分析**

- [TensorFlow for Foreign Exchange Market: Analyzing Time-Series Data - Blog on All Things Cloud Foundry](https://blog.altoros.com/tensorflow-for-foreign-exchange-market-analyzing-time-series-data.html)
- [Predicting Heavy and Extreme Losses in Real-Time for Portfolio Holders (2) | Quant at Risk](http://www.quantatrisk.com/2015/12/06/predicting-heavy-and-extreme-losses-in-real-time-for-portfolio-holders-2/)
- [Why time series forecasts prediction intervals aren't as good as we'd hope](http://ellisp.github.io/blog/2016/12/07/arima-prediction-intervals)
- [Error, trend, seasonality - ets and its forecast model friends](http://ellisp.github.io/blog/2016/11/27/ets-friends)
- [Dual axes time series plots with various more awkward data](http://ellisp.github.io/blog/2016/08/28/dualaxes2)

**R 语言**

- [Togaware – Resources for the Data Scientist](https://togaware.com/)
- [ParallelR高性能并行计算与R语言](http://www.parallelr.com/)
- [R-Ladies global tour ](http://www.masalmon.eu/2017/10/06/globalrladiestour/)
- [R-Ladies Global – R-Ladies is a world-wide organization to promote gender diversity in the R community](http://rladies.org/)
- [Shane Lynn - Data science, analytics, and Startups](https://www.shanelynn.ie/)
- [Open Source Projects | NumFOCUS](https://www.numfocus.org/open-source-projects/)
- [DataScience+ An online community for showcasing R & Python tutorials](https://datascienceplus.com/)
- [Latest Posts – So Simple Theme](https://mmistakes.github.io/so-simple-theme/)
- [Video Tutorial of PSO implementation in MATLAB](http://yarpiz.com/440/ytea101-particle-swarm-optimization-pso-in-matlab-video-tutorial)
- [Statistics.com - Course List - Online Courses](http://www.statistics.com/course-catalog/)
- [me nugget](http://menugget.blogspot.jp/)
- [Time Series Analysis and Its Applications: With R Examples - tsa4](http://www.stat.pitt.edu/stoffer/tsa4/)
- [(code实战)机器学习方法和性能比较](http://rpubs.com/m3cinc/Benchmarking_20_Machine_Learning_Models_Accuracy_and_Speed)
- [ggplot2 – The R graph Gallery](http://www.r-graph-gallery.com/portfolio/ggplot2-package/)
- [quantumobject/docker-shiny - Docker Hub](https://hub.docker.com/r/quantumobject/docker-shiny/)
- [ggplot2绘图库](http://www.sthda.com/english/)
- [Highcharter 商业](http://jkunst.com/highcharter/)
- [john-coene.com](http://john-coene.com/)
- [Deep Learning in R – R Blog](http://www.rblog.uni-freiburg.de/2017/02/07/deep-learning-in-r/)
- [Zelig 统计推断方法合集](https://zeligproject.org/)
- [Paul Murrell's Home Page](https://www.stat.auckland.ac.nz/~paul/)
- [Data Science Accelerator for Credit Risk Prediction (Revolutions)](http://blog.revolutionanalytics.com/2017/07/credit-risk-prediction.html)
- [Credit Card Fraud Detection | Kaggle](https://www.kaggle.com/dalpozz/creditcardfraud)

**Python**

- [Jupyter Notebook Viewer](http://nbviewer.jupyter.org/)
- [Pyomo](http://www.pyomo.org/)
- [Bokeh Docs](http://bokeh.pydata.org/en/latest/)
- [NumPy Tutorial: Data analysis with Python](https://www.dataquest.io/blog/numpy-tutorial-python/)
- [scikit-learn: machine learning in Python — scikit-learn 0.18.1 documentation](http://scikit-learn.org/stable/)
- [Introduction to NumPy and Matplotlib - YouTube](https://www.youtube.com/watch?v=3Fp1zn5ao2M&feature=plcp)
- [Data Science, Analytics and Big Data discussions](https://discuss.analyticsvidhya.com/)
- [The Python Graph Gallery – Visualizing data – with Python](https://python-graph-gallery.com/)
- [Data science, data analysis, and data engineering tutorials and articles.](https://www.dataquest.io/blog/)
- [ŷhat | Image Processing with scikit-image](http://blog.yhat.com/posts/image-processing-with-scikit-image.html)

**社交网络**

- [Using the iGraph package to Analyse the Enron Corpus](http://r.prevos.net/analyse-enron-corpus/)
- [Help Us Map TrumpWorld](https://www.buzzfeed.com/johntemplon/help-us-map-trumpworld?utm_term=.rx9NY9Ldb#.ja8P4p9LY)
- [Enron Email Dataset](https://www.cs.cmu.edu/~./enron/)
- [Statnet](http://statnet.org/)
- [Mining Twitter with R](https://sites.google.com/site/miningtwitter/)
- [graphTweets](http://john-coene.com/packages/graphTweets/)
- [Building Wordclouds in R | DataScience+](https://datascienceplus.com/building-wordclouds-in-r/)
- [API - 微博API](http://open.weibo.com/wiki/API%E6%96%87%E6%A1%A3_V2?sudaref=jianl.org&retcode=6102)
- [Introducing tidygraph](http://www.data-imaginist.com/2017/Introducing-tidygraph/)
- [Network analysis of Game of Thrones | DataScience+](https://datascienceplus.com/network-analysis-of-game-of-thrones/)
- [Using R packages and education to scale Data Science at Airbnb – Airbnb Engineering & Data Science – Medium](https://medium.com/airbnb-engineering/using-r-packages-and-education-to-scale-data-science-at-airbnb-906faa58e12d)
- [RPubs - Twitter Coverage of the ISMB/ECCB Conference 2017](http://rpubs.com/neilfws/295865)
- [UCI Network Data Repository](https://networkdata.ics.uci.edu/)

**课程**

- [DS-GA 1003: Machine Learning and Computational Statistics, Spring 2015](http://davidrosenberg.github.io/ml2015/#home)
- [卡内基梅隆大学Machine Learning课程](http://www.cs.cmu.edu/~tom/10701_sp11/hws.shtml)
- [课程列表: Deep Learning](http://eclass.cc/courselists/117_deep_learning)
- [(概率图模型-卡内基梅隆大学) Probabilistic Graphical Models](http://www.cs.cmu.edu/~epxing/Class/10708/lecture.html)
- [Learning Deep Learning课程资料大集合](http://rt.dgyblog.com/ref/ref-learning-deep-learning.html)
- [课程Theoretical Machine Learning](http://www.cs.princeton.edu/courses/archive/spring14/cos511/schedule.html)
- [机器学习算法观](http://people.csail.mit.edu/moitra/409.html)
- [(伯克利大学)机器学习导论课程Introduction to Machine Learning](http://www.cs.berkeley.edu/~jrs/189/)
- [Intro to Apache Spark Training - Part 3 - YouTube](https://www.youtube.com/watch?v=Cxv_ERVKYE4)
- [李宏毅深度学习(2017)_演讲•公开课_科技_bilibili_哔哩哔哩](http://www.bilibili.com/video/av9770302/)
- [1.1 《机器学习中的神经网络》为什么我们需要机器学习？_腾讯视频](https://v.qq.com/x/page/t0384c1p2em.html)
- [In-depth introduction to machine learning in 15 hours of expert videos](http://www.dataschool.io/15-hours-of-expert-machine-learning-videos/)
- [Gephi 中文教程 | Udemy](https://www.udemy.com/gephi/learn/v4/overview)

**Deep Learning**

- [PyTorch](http://pytorch.org/)
- [Caffe 2 | Caffe2](https://caffe2.ai/)
- [[福利] 深入理解 RNNs & LSTM 网络学习资料 - 简书](http://www.jianshu.com/p/c930d61e1f16?from=timeline)
- [TensorFlow中文社区-首页](http://tensorfly.cn/)
- [Deep Learning in Energy Production context (wind, gas and oil)](https://amundtveit.com/)
- [Off the convex path](http://www.offconvex.org/)
- [The Neural Network Zoo - The Asimov Institute](http://www.asimovinstitute.org/neural-network-zoo/)
- [Yann LeCun's Home Page](http://yann.lecun.com/)
- [Yoshua Bengio](http://www.iro.umontreal.ca/~bengioy/yoshua_en/index.html)
- [Ian Goodfellow --- Research Page](http://www.iangoodfellow.com/)
- [Time Series Prediction With Deep Learning in Keras - Machine Learning Mastery](http://machinelearningmastery.com/time-series-prediction-with-deep-learning-in-python-with-keras/)
- [迁移学习 Keras R](https://flovv.github.io/Logo_detection_transfer_learning/)
- [Information Systems Research](https://www.is.uni-freiburg.de/)
- [The Ultimate List of TensorFlow Resources: Books, Tutorials & More - Hacker Lists](https://hackerlists.com/tensorflow-resources/)
- [Neural Networks from Scratch, in R (Revolutions)](http://blog.revolutionanalytics.com/2017/07/nnets-from-scratch.html)
- [[机器学习入门] 李宏毅机器学习笔记](http://blog.csdn.net/soulmeetliang)
- [Center for Machine Learning and Intelligent Systems | University of California, Irvine](http://cml.ics.uci.edu/)
- [(支持向量机算法)LIBSVM -- A Library for Support Vector Machines](http://www.csie.ntu.edu.tw/~cjlin/libsvm/)

**软件测试**

- [Jenkins](https://jenkins.io/)
- [Centos | Docker中文教程](https://letong.gitbooks.io/docker/content/install/centos.html)
- [Ubuntu – Ubuntu Packages Search](https://packages.ubuntu.com/)
- [Pandoc - Pandoc User’s Guide](http://pandoc.org/MANUAL.html#pandocs-markdown)

**LaTeX**

- [始终](https://liam0205.me/)
- [风陵渡](http://wangmurong.org.cn/)
- [fitsir的博客](https://fitsir.me/)
- [Ethlisan | Ethan DENG's Personal Homepage](http://ddswhu.com/)
- [Cyberspace of Shujun LI李树钧](http://www.hooklee.com/)
- [LaTeX写作专栏 – |经常|](http://blog.feieee.com/latex)
- [在线 LaTeX 公式编辑器](http://www.codecogs.com/latex/eqneditor.php)
- [Beamer Matrix](https://mpetroff.net/files/beamer-theme-matrix/)
- [ChinaTeX-Tex&LaTeX are your typesetting friends.](http://www.chinatex.org/)
- [LaTeX Templates](http://www.latextemplates.com/)
- [Overleaf](https://www.overleaf.com/)
- [Introduction | Learning-Markdown (Markdown 入门参考)](http://xianbai.me/learn-md/index.html)
- [MathJax | Beautiful math in all browsers.](https://www.mathjax.org/)
- [Pandoc - About pandoc](https://pandoc.org/)
- [TikZ and PGF | TeXample.net](http://www.texample.net/tikz/)
- [Rants from the Lab](http://liantze.penguinattack.org/)
- [国家企业信用信息公示系统](http://www.gsxt.gov.cn/index.html)
- [Linux命令大全(手册)_Linux常用命令行实例详解_Linux命令学习手册](http://man.linuxde.net/)
- [生命不息 | 张宏伦的个人博客](http://zhanghonglun.cn/blog/)
- [大赛列表页](https://tianchi.aliyun.com/competition/gameList.htm)
- [城市数据派-首页](https://www.udparty.com/index.php)
- [研趣网 - 首个可视化商业价值挖掘和传播社区](http://www.rinterest.cn/)
- [inFERENCe](http://www.inference.vc/)
- [MSDN, 我告诉你](http://msdn.itellyou.cn/)
- [RegExr: Learn, Build, & Test RegEx](https://regexr.com/)
- [rud.is | "In God we trust. All others must bring data"](https://rud.is/b/)
- [北京理工大学 开源软件镜像服务](http://mirror.bit6.edu.cn/web/)
- [Statistics authors/titles recent submissions](http://arxiv.org/list/stat/recent)
- [Wolfram|Alpha: Computational Knowledge Engine](http://www.wolframalpha.com/?source=nav)
- [中国科技论文在线](http://www.paper.edu.cn/)
- [我是菜鸟 | IMCN开源资讯网](https://imcn.me/)
- [USGS.gov](https://www.usgs.gov/)
- [Index of /download/ensembles/data/Grid_0.44deg_rot](http://www.ecad.eu/download/ensembles/data/Grid_0.44deg_rot/)
- [The Stan Forums](http://discourse.mc-stan.org/)
- [论坛 - 六维空间 - 教育科研网分享测试平台](http://bt.neu6.edu.cn/forum.php)
- [免费在线电影-新剧集影院官网-支持手机观看](http://www.xinjuji.com/index.html)
- [CCTV-1 综合频道高清直播](http://tv.cctv.com/live/cctv1/)
- [BYR-IPTV](http://tv.byr.cn/tv-show-detail/78)
- [七牛云-国内领先的企业级云服务商](https://www.qiniu.com/)
- [RStudio Community](https://community.rstudio.com/)
- [电影天堂_免费电影_迅雷电影下载](http://www.dytt8.net/)
- [80s电影网 - 高清手机电影迅雷下载_最新MP4电视剧磁力下载](https://www.80s.tw/)
- [Google](https://www.google.com/)
- [gen.lib.rus.ec](http://gen.lib.rus.ec/)
- [Octave Online · Cloud IDE compatible with MATLAB](https://octave-online.net/#cmd=peaks)
