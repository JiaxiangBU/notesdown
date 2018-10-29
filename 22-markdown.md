
# R Markdown {#chap:R-Markdown}



R Markdown 站在巨人的肩膀上，这些巨人有 [Markdown](https://daringfireball.net/projects/markdown/)、 [LaTeX](https://www.latex-project.org/)、 [Pandoc](http://pandoc.org)。 

生态系统

1. 报告
   - learnr: Interactive Tutorials with R Markdown <https://rstudio.github.com/learnr/>
   - r2d3: R Interface to D3 Visualizations <https://rstudio.github.io/r2d3/>
   - radix: Radix combines the technical authoring features of Distill with R Markdown, enabling a fully reproducible workflow based on literate programming <https://github.com/radixpub/radix-r>
2. 网络服务
   - RestRserve: RestRserve is a R web API framework for building high-performance microservices and app backends <https://github.com/dselivanov/RestRserve> 基于 [Rserve](https://github.com/s-u/Rserve) 在笔记本上处理请求的吞吐量是每秒10000次，比 plumber 快大约20倍
   - plumber: Turn your R code into a web API. <https://www.rplumber.io>
3. 展示
   - revealjs: R Markdown Format for reveal.js Presentations <https://github.com/rstudio/revealjs>
   - xaringan: Presentation Ninja 幻灯忍者写轮眼 <https://slides.yihui.name/xaringan/>

## bookdown

> A Markdown-formatted document should be publishable as-is, as plain text, without looking like it’s been marked up with tags or formatting instructions. --- John Gruber

Markdown 基础语法见 RStudio IDE自带的手册 Markdown Quick Reference， 这里主要介绍一下 Markdown 高级语法， 特别是 Pandoc's Markdown^[Pandoc 提供了很多对 Markdown 的扩展支持] 表格、图片和公式的使用

- 表格

插入表格很简单的，如表 \@ref(tab:insert-tab) 所示，还带脚注哦

Table: (\#tab:insert-tab) A table caption^[With a footnote]

| First Header | Second Header |
| :----------- | :------------ |
| Content Cell | Content Cell  |
| Content Cell | Content Cell  |


- 图片

插入图片也很简单的，如图\@ref(fig:insert-fig)所示

<div align="center">
![(\#fig:insert-fig) 插入图^[这里也是脚注哦]](figures/fig11.png){ width=45% }
</div>

图、表的标题很长可以使用文本引用^[<https://bookdown.org/yihui/bookdown/markdown-extensions-by-bookdown.html#text-references>]的方式实现。

<div class="figure" style="text-align: center">
<img src="figures/fig11.png" alt="(ref:par)" width="45%" />
<p class="caption">(\#fig:knitr-graphics)(ref:par)</p>
</div>

(ref:par) 图表标题很长可使用文本引用方式 `knitr::include_graphics` 插图


- 引用

为了区分章和节之间的引用，在章的添加 chap，如 `\@ref(chap:R-Markdown)`，在节的添加 sect，如 `\@ref(sect:markdown)`

(ref:fig-cap) 测试文本引用 \@ref(chap:R-Markdown)


```r
plot( rnorm( 10 ) )
```

<div class="figure" style="text-align: center">
<img src="22-markdown_files/figure-html/fig1-1.png" alt="(ref:fig-cap)" width="70%" />
<p class="caption">(\#fig:fig1)(ref:fig-cap)</p>
</div>


```r
plot( rnorm( 10 ) )
```

<div class="figure" style="text-align: center">
<img src="22-markdown_files/figure-html/fig2-1.png" alt="(ref:fig-cap)" width="70%" height="4in" />
<p class="caption">(\#fig:fig2)(ref:fig-cap)</p>
</div>


- 公式

行内公式一对美元符号 $\alpha$ 或者 \(\alpha+\beta\)，行间公式 $$\alpha$$ 或者 \[\alpha + \beta\]

对公式编号，如公式 \@ref(eq:likelihood)

\begin{equation}
L(\beta,\boldsymbol{\theta}) = f(y;\beta,\boldsymbol{\theta}) = \int_{\mathbb{R}^{n}}N(t;D\beta,\Sigma(\boldsymbol{\theta}))f(y|t)dt (\#eq:likelihood)
\end{equation}

多行公式分别编号，如公式\@ref(eq:BL-SGLMM) 和公式\@ref(eq:Poss-SGLMM) 

\begin{align}
\log\{\frac{p_i}{1-p_i}\} & = T_{i} = d(x_i)'\beta + S(x_i) + Z_i (\#eq:BL-SGLMM)\\
\log(\lambda_i)           & = T_{i} = d(x_i)'\beta + S(x_i) + Z_i (\#eq:Poss-SGLMM)
\end{align}

多行公式中对某一（些）行编号，如公式 \@ref(eq:align) 和 公式 \@ref(eq:Poss-SGLMM2)

\begin{align} 
g(X_{n}) &= g(\theta)+g'({\tilde{\theta}})(X_{n}-\theta) \\
\sqrt{n}[g(X_{n})-g(\theta)] &= g'\left({\tilde{\theta}}\right) 
  \sqrt{n}[X_{n}-\theta ] (\#eq:align) \\
\log(\lambda_i)  & = T_{i} = d(x_i)'\beta + S(x_i) + Z_i (\#eq:Poss-SGLMM2)  
\end{align} 

多行公式共用一个编号，如公式 \@ref(eq:likelihood2)

\begin{equation}
\begin{aligned}
L(\beta,\boldsymbol{\theta})
& = \int_{\mathbb{R}^{n}} \frac{N(t;D\beta,\Sigma(\boldsymbol{\theta}))f(y|t)}{N(t;D\beta_{0},\Sigma(\boldsymbol{\theta}_{0}))f(y|t)}f(y,t)dt\\
& \varpropto \int_{\mathbb{R}^{n}} \frac{N(t;D\beta,\Sigma(\boldsymbol{\theta}))}{N(t;D\beta_{0},\Sigma(\boldsymbol{\theta}_{0}))}f(t|y)dt \\
&= E_{T|y}\left[\frac{N(t;D\beta,\Sigma(\boldsymbol{\theta}))}{N(t;D\beta_{0},\Sigma(\boldsymbol{\theta}_{0}))}\right] 
\end{aligned}
(\#eq:likelihood2)
\end{equation}

推荐在 `equation` 公式中，使用 `split` 环境，意思是一个公式很长，需要拆成多行，如公式\@ref(eq:var-beta)

\begin{equation} 
\begin{split}
\mathrm{Var}(\hat{\beta}) & =\mathrm{Var}((X'X)^{-1}X'y)\\
 & =(X'X)^{-1}X'\mathrm{Var}(y)((X'X)^{-1}X')'\\
 & =(X'X)^{-1}X'\mathrm{Var}(y)X(X'X)^{-1}\\
 & =(X'X)^{-1}X'\sigma^{2}IX(X'X)^{-1}\\
 & =(X'X)^{-1}\sigma^{2}
\end{split}
(\#eq:var-beta)
\end{equation} 

注意，`\mathbf` 只对字母 $a,b,c,A,B,C$ 加粗，mathjax 不支持公式中使用 `\bm` 对 $\theta,\alpha,\beta,\ldots,\gamma$ 加粗，应该使用 `\boldsymbol`


- 图片引用



![工作流程图](diagrams/00-workflow.png){#fig:id1 width=70% }

gitbook 这样网页又该如何引用这张图片呢？

<div class="figure" style="text-align: center">
<img src="diagrams/00-workflow.svg" alt="两种编译方式及过程" width="70%" />
<p class="caption">(\#fig:00-workflow)两种编译方式及过程</p>
</div>

如图 \@ref(fig:00-workflow) 展示了两种编译方式


在指定目录创建 Book 项目，

```r
bookdown:::bookdown_skeleton("~/book")
```

项目根目录的文件列表

```markdown
directory/
├──  index.Rmd
├── 01-intro.Rmd
├── 02-literature.Rmd
├── 03-method.Rmd
├── 04-application.Rmd
├── 05-summary.Rmd
├── 06-references.Rmd
├── _bookdown.yml
├── _output.yml
├──  book.bib
├──  preamble.tex
├──  README.md
└──  style.css
```

broom 和 pixiedust 制作表格 Tables So Beautifully Fine-Tuned You Will Believe It's Magic. <https://github.com/nutterb/pixiedust>


## 复杂表格制作 {#kableExtra}

- kableExtra

借助 kableExtra 包 [@R-kableExtra] 可以制作复杂的统计图表，更多的例子请看 <https://github.com/haozhu233/kableExtra> ，我喜欢这个图标设计，如图 \@ref(fig:kableExtra)

<div class="figure" style="text-align: center">
<img src="diagrams/kableExtra.svg" alt="kableExtra 的徽标" width="30%" />
<p class="caption">(\#fig:kableExtra)kableExtra 的徽标</p>
</div>


```r
library(knitr)
library(kableExtra)
dt <- mtcars[1:5, 1:4]

# HTML table
kable(dt, format = "html", caption = "kableExtra 制作") %>%
  kable_styling(bootstrap_options = "striped",
                full_width = F) %>%
  add_header_above(c(" ", "Group 1" = 2, "Group 2[note]" = 2)) %>%
  add_footnote(c("table footnote"))

# LaTeX Table
kable(dt, format = "latex", booktabs = T, caption = "kableExtra 制作") %>%
  kable_styling(latex_options = c("striped", "hold_position"),
                full_width = F) %>%
  add_header_above(c(" ", "Group 1" = 2, "Group 2[note]" = 2)) %>%
  add_footnote(c("table footnote"))
```

1. 如何将表格横向或者纵向展示


2. 添加短标题


```r
library(dplyr)
library(knitr)
library(kableExtra) # 这个必须加载

df <- data.frame( X = sample(letters, 10), y = runif(10), z = sample(10:20, 10))

kable(df,
      booktabs = TRUE,
      caption = "This caption is way too long and doesnt look good when formatted in the Table of Contents.  What you really need here is a much shorter caption so that your eyes dont go crazy trying to figure out what information the author is trying to convey.  Often there is too much information in the caption anyway so why not shorten it?.",
      escape = FALSE,
      format = 'latex') %>%
  kable_styling(latex_options = c("striped", "hold_position"))
```




```r
kable(df,
      booktabs = TRUE,
      caption = "This caption is way too long and doesnt look good when formatted in the Table of Contents.  What you really need here is a much shorter caption so that your eyes dont go crazy trying to figure out what information the author is trying to convey.  Often there is too much information in the caption anyway so why not shorten it?.",
      caption.short = "This is a shorter caption.",
      escape = FALSE,
      format = 'latex') %>%
  kable_styling(latex_options = c("striped", "hold_position"))
```
