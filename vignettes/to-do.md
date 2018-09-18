## 那些年遇到的有关字符编码的坑

- Windows

```bash
l10n_info()
```
```
$`MBCS`
[1] TRUE

$`UTF-8`
[1] FALSE

$`Latin-1`
[1] FALSE

$codepage
[1] 936
```

```
localeToCharset()
[1] "CP936"
```

- Linux

```r
l10n_info()
```
```
$MBCS
[1] TRUE

$`UTF-8`
[1] TRUE

$`Latin-1`
[1] FALSE
```

```
localeToCharset()
[1] "UTF-8" NA  
```

## 文件管理

- sys: Powerful replacements for base::system2 <https://github.com/jeroen/sys>
- fs: Provide cross platform file operations based on libuv <http://fs.r-lib.org/>

- 文件压缩*解压缩

`tar/untar` 与 `zip/unzip`

- 文件读写

```r
apropos("^read.")
```
```
 [1] "read.csv"         "read.csv2"        "read.dcf"        
 [4] "read.delim"       "read.delim2"      "read.DIF"        
 [7] "read.fortran"     "read.ftable"      "read.fwf"        
[10] "read.socket"      "read.table"       "readBin"         
[13] "readChar"         "readCitationFile" "readClipboard"   
[16] "readline"         "readLines"        "readRDS"         
[19] "readRegistry"     "readRenviron"    
```

```r
apropos("^write.")
```

```
 [1] "write.csv"      "write.csv2"     "write.dcf"      "write.ftable"  
 [5] "write.socket"   "write.table"    "writeBin"       "writeChar"     
 [9] "writeClipboard" "writeLines"    
```

- 文件创建/删改查

```r
apropos("^file.")
```
```
 [1] "file.access"  "file.append"  "file.choose"  "file.copy"   
 [5] "file.create"  "file.edit"    "file.exists"  "file.info"   
 [9] "file.link"    "file.mode"    "file.mtime"   "file.path"   
[13] "file.remove"  "file.rename"  "file.show"    "file.size"   
[17] "file.symlink" "file_test"    "fileSnapshot"
```

`choose.files`  `list.files`

- 下载文件

```r
apropos("^download.")
```
```
[1] "download.file"     "download.packages"
```

- 目录操作

```r
apropos("dir.")
```
```
[1] "dir.create"       "dir.exists"       "dirname"         
[4] "getSrcDirectory"  "list.dirs"        "substituteDirect"
```

`capture.output` 参数为表达式

`with` 与 `attach`
`sink`


```r
sink("sink-examp.txt")
i <- 1:10
outer(i, i, "*")
sink()
```

只将 `outer` 的结果保存到 `sink-examp.txt` 文件

- 图形设备管理

Table: (\#tab:graphics-devices) List of Graphical Devices

available     | functional
------------- | -------------
windows       | cairo_pdf, cairo_ps
pdf           | svg
postscript    | png
xfig          | jpeg
bitmap        | bmp
pictex        | tiff


```r
apropos("dev.")
```
```
 [1] ".Device"             ".Devices"            "dev.capabilities"   
 [4] "dev.capture"         "dev.control"         "dev.copy"           
 [7] "dev.copy2eps"        "dev.copy2pdf"        "dev.cur"            
[10] "dev.flush"           "dev.hold"            "dev.interactive"    
[13] "dev.list"            "dev.new"             "dev.next"           
[16] "dev.off"             "dev.prev"            "dev.print"          
[19] "dev.set"             "dev.size"            "dev2bitmap"         
[22] "devAskNewPage"       "deviance"            "deviceIsInteractive"
```

- 操作 R 包

```r
apropos("package")
```

```
 [1] "$.package_version"              ".find.package"                 
 [3] ".packages"                      ".packageStartupMessage"        
 [5] ".path.package"                  "as.package_version"            
 [7] "aspell_package_C_files"         "aspell_package_R_files"        
 [9] "aspell_package_Rd_files"        "aspell_package_vignettes"      
[11] "available.packages"             "CRAN.packages"                 
[13] "download.packages"              "find.package"                  
[15] "findPackageEnv"                 "format.packageInfo"            
[17] "getClassPackage"                "getPackageName"                
[19] "install.packages"               "installed.packages"            
[21] "is.package_version"             "make.packages.html"            
[23] "methodsPackageMetaName"         "new.packages"                  
[25] "old.packages"                   "package.skeleton"              
[27] "package_version"                "packageDate"                   
[29] "packageDescription"             "packageEvent"                  
[31] "packageHasNamespace"            "packageName"                   
[33] "packageSlot"                    "packageSlot<-"                 
[35] "packageStartupMessage"          "packageStatus"                 
[37] "packageVersion"                 "path.package"                  
[39] "print.packageInfo"              "promptPackage"                 
[41] "remove.packages"                "setPackageName"                
[43] "suppressPackageStartupMessages" "update.packages"               
```

