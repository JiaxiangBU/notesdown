
\mainmatter

# 安装与配置 {#install-setup}



## DBI

这是一个存放在Github上的包，随着 ClikHouse 在大厂的流行，此包也受到越来越多的关注
与数据仓库如何连接，如何查询数据，背后的接口 DBI 如何使用，实例化一个新的接口（如 clickhouse2r ）

- <https://github.com/hannesmuehleisen/clickhouse-r>
- 壮士！交给你个任务，基于 clickhouse 的 odbc 驱动 <https://github.com/yandex/clickhouse-odbc> 写了 R 包如何，顺带介绍 clickhouse ，再给统计之都投篇稿子，在明年的 R 会给个相关报告。名字 r4clickhouse 还是 clickhouse4r 呢

[ClickHouse](https://clickhouse.yandex/) 独辟蹊径，基于 C++ 的实现，数据查询速度超级快，官网介绍碾压大量传统数据库。还有不少接口，其中还有 R 的 <https://github.com/hannesmuehleisen/clickhouse-r> 

- 安装

```r
devtools::install_github("hannesmuehleisen/clickhouse-r")
```

下载 <https://clickhouse.yandex/docs/en/single/#installation>

- 使用


```r
library(DBI)
con <- dbConnect(clickhouse::clickhouse(),
  host = "localhost",
  port = 8123L,
  user = "default",
  password = ""
)
dbWriteTable(con, "mtcars", mtcars)
dbListTables(con)
dbGetQuery(con, "SELECT COUNT(*) FROM mtcars")
d <- dbReadTable(con, "mtcars")
dbDisconnect(con)
```

发现它和 knitr  里的 SQL 钩子，都用 DBI 这个R包  <https://github.com/rstats-db/DBI>


```r
knitr::include_graphics(path = "images/clickhouse.png")
```

<div class="figure" style="text-align: center">
<img src="images/clickhouse.png" alt="ClickHouse与R" width="70%" />
<p class="caption">(\#fig:clickhouse)ClickHouse与R</p>
</div>

参考 <https://d.cosx.org/d/419974-r-markdown-sql>

````markdown
```{r setup}
library(DBI)
library(RMySQL)
# 这里的数据库链接信息我改了
db <- dbConnect(MySQL(),
  dbname = "dbtest",
  username = "user_test",
  password = "password",
  host = "10.10.101.10",
  port = 3306
)
# 创建默认连接
knitr::opts_chunk$set(connection = "db")
# 设置字符，以免中文查询乱码
dbSendQuery(db, "SET NAMES utf8")
# 设置日期变量，以运用在SQL中
idate <- "2018-05-03"
# 请忽略我
```
````

SQL中使用R的变量并将结果输出为数据框

````markdown
```{sql, output.var="data_output"}
SELECT * FROM user_table where date_format(created_date,'%Y-%m-%d')>=?idate  
# 请忽略我
```
````

以上代码会将SQL的运行结果存在 `data_output` 这是数据库中。如果SQL比较长，为了代码美观，把带有变量的SQL保存为.sql脚本，那怎么在SQL的chunk中直接导入SQL文件

````markdown
```{sql, code=readLines("你的脚本.sql")}
```
````


### reticulate

Python 与 R 交互

### INLA 

具有非常多的依赖关系，除了 CRAN 还有来自 bioconductor 的包，介绍 <http://www.r-inla.org/events/newtutorialsonspatialmodelsininla>


```r
install.packages("INLA",
  repos = "https://www.math.ntnu.no/inla/R/testing"
)
```

### mxnet

依赖也是很多，主要在于 GPU 版如何安装使用

### tensorflow

同样地，依赖也是很多，主要在于 GPU 版如何安装使用

## 安装 IDE

RStudio


## 配置文件


工作目录下的 .Rprofile，设置 site-library，设置环境变量 Renviron



## 小技巧 {#tricks}

1. 设置 Notepad++ 为 Git Bash 默认编辑器

图 \@ref(fig:notepad-git) 所示^[<http://readorskip.com/2016/09/12/Using-Notepad-to-Write-Git-Commit-Messages/>]


```r
knitr::include_graphics(path = "images/git-vim-commit-message.png")
```

<div class="figure" style="text-align: center">
<img src="images/git-vim-commit-message.png" alt="Notepad++ 与 Git" width="70%" />
<p class="caption">(\#fig:notepad-git)Notepad++ 与 Git</p>
</div>

在 Git Bash 中输入下面一行

```bash
git config --global core.editor "'c:\Program Files\Notepad++\notepad++.exe' -multiInst -notabbar -nosession -noPlugin '$*'"
```

Windows下配置 Git 中 ssh-agent 自动启动 <https://lfkid.github.io/>
这种让 Git 的 ssh-agent 常驻内存貌似不合理，占内存嘛

设置 ssh 和 store 保存应该比较好


2. 打开 bookdown 项目出来警告

如图 \@ref(fig:yaml-load) 所示，目前只出现在 Windows 平台下

<div class="figure" style="text-align: center">
<img src="diagrams/ymal-load-error.png" alt="YAML 扫描错误" width="70%" />
<p class="caption">(\#fig:yaml-load)YAML 扫描错误</p>
</div>

直观来看，是字符串 string 本身需要转化为 UTF8（其实是需要YAML区域都变成UTF8），有关详细介绍见 <http://biostat.mc.vanderbilt.edu/wiki/Main/YamlR#yaml.load> 和 <https://github.com/viking/r-yaml>


```r
yaml::yaml.load
#> function (string, as.named.list = TRUE, handlers = NULL, error.label = NULL, 
#>     eval.expr = getOption("yaml.eval.expr", TRUE)) 
#> {
#>     eval.warning <- missing(eval.expr) && is.null(getOption("yaml.eval.expr"))
#>     string <- enc2utf8(paste(string, collapse = "\n"))
#>     .Call(C_unserialize_from_yaml, string, as.named.list, handlers, 
#>         error.label, eval.expr, eval.warning, PACKAGE = "yaml")
#> }
#> <bytecode: 0x2182d98>
#> <environment: namespace:yaml>
```

先看个简单的


```r
yaml::yaml.load('你好')
#> [1] "你好"
```

开发者用如下方式避免一个警告 [issues #47](https://github.com/viking/r-yaml/issues/47)


```r
yaml::yaml.load("!expr paste('orange')", handlers = list(expr = function(x) eval(parse(text = x))))
#> [1] "orange"
```

要么等着 YAML 更新，要么等着 bookdown 或 rmarkdown 更新，目前还是在 rocker 下编辑吧，看着红红的警告信息，心里有点烦。

- <https://github.com/viking/r-yaml/issues/6>
- <https://github.com/rstudio/rmarkdown/issues/420>
- <https://github.com/rstudio/config/issues/12>
