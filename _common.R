library(methods)
set.seed(2018)
options(digits = 3)
library(magrittr)

lapply(c(
  "bookdown", "styler", "tikzDevice", "extrafont",
  "formatR", "ggplot2", "fortunes", "reticulate",
  "showtext", "sysfonts", "showtextdb",
  "fontcm",
  "tikzDevice", "filehash", "png",
  "xkcd", "extrafontdb", "Rttf2pt1", "extrafont"
), function(pkg) {
  if (system.file(package = pkg) == "") install.packages(pkg)
})

if (!all(c("source-han-sans-cn", "source-han-serif-cn") %in% showtextdb::font_installed())) {
  showtextdb::font_install(showtextdb::source_han_serif("CN"))
  showtextdb::font_install(showtextdb::source_han_sans("CN"))
}
extrafont::font_install("fontcm")
extrafont::loadfonts()

if (!"xkcd" %in% extrafont::fonts()) {
  path <- path.expand("~/.fonts")
  if (!file.exists(path)) {
    dir.create(path = path.expand("~/.fonts"))
  }
  download.file("http://simonsoftware.se/other/xkcd.ttf", dest = path.expand("~/.fonts/xkcd.ttf"), mode = "wb")
  extrafont::font_import(paths = path.expand("~/.fonts"), pattern = "[X/x]kcd", prompt = FALSE)
  extrafont::loadfonts()
}

extrafont::fonts() # registered with pdfFonts()
sysfonts::font_families() # List available font families

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  echo = TRUE,
  cache = TRUE,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618 # 1 / phi
)
ext <- if (knitr::is_html_output()) ".svg" else if (knitr::is_latex_output()) ".pdf" else ".png"

# https://github.com/yihui/knitr-examples/blob/master/085-pdfcrop.Rnw
# knitr::knit_hooks$set(crop = hook_pdfcrop)
options(
  repos = "https://mirrors.tuna.tsinghua.edu.cn/CRAN/",
  tikzDefaultEngine = "xetex",
  citation.bibtex.max = 999,
  tikzXelatexPackages = c(
    getOption("tikzXelatexPackages"),
    "\\usepackage[colorlinks, breaklinks]{hyperref}",
    "\\usepackage{color}",
    "\\usepackage{tikz}",
    "\\usepackage[active,tightpage,xetex]{preview}",
    "\\PreviewEnvironment{pgfpicture}",
    "\\usepackage{amsmath}",
    "\\usepackage{amsfonts}",
    "\\usepackage{mathrsfs}"
  )
)

knitr::knit_hooks$set(
  optipng = knitr::hook_optipng,
  pdfcrop = knitr::hook_pdfcrop,
  small.mar = function(before, options, envir) {
    if (before) par(mar = c(4.1, 4.1, 0.5, 0.5)) # smaller margin on top and right
  }
)

# ugly magick for dev='tikz'
to_svg <- function(fig_path) {
  lines <- readLines("vignettes/mini-demo.tex") # mini-demo.tex is template
  i <- grep("%% TIKZ_CODE %%", lines)
  code <- readLines(fig_path)
  s <- append(lines, code, i) # insert tikz into tex-template
  writeLines(s, fig_path)
  tools::texi2dvi(fig_path, pdf = FALSE, clean = TRUE) # tex to dvi
  dvi_fig_path <- sub("\\.tex$", ".dvi", basename(fig_path))
  system2("dvisvgm", dvi_fig_path) # dvi to svg
  svg_path <- sub("\\.dvi$", ".svg", dvi_fig_path)
  mv_cmd <- paste("mv", svg_path, dirname(fig_path), sep = " ")
  system(mv_cmd)
  return(sub("\\.tex$", ".svg", fig_path))
}

to_png <- function(fig_path) {
  return(sub("\\.pdf$", ".png", fig_path))
}
# copy https://github.com/yihui/knitr-examples/blob/master/085-pdfcrop.Rnw
knitr::knit_hooks$set(tikz2png = function(before, options, envir) {
  # use this hook only for dev='tikz' and externalized tikz graphics
  if (before || options$dev != "tikz" || !options$external || options$fig.num == 0) return()
  figs <- knitr:::all_figs(options, ext = "pdf") # all figure names
  # note the tikz2png option is the extra parameters passed to 'convert'
  for (fig in figs) {
    system(sprintf("convert %s %s %s", options$tikz2png, fig, sub("\\.pdf$", ".png", fig)))
  }
})

is_on_travis <- identical(Sys.getenv("TRAVIS"), "true")
is_online <- curl::has_internet()

library(reticulate)
if (is_on_travis) use_virtualenv("shims") else use_python("/usr/bin/python", required = FALSE)
# Python 环境的描述在附录
# required = FALSE 默认值，如果按照指定的位置没有找到 Python 就会扫描其它版本
# use_python("/opt/pyenv/shims/python")
# use_virtualenv("shims")

# 设置环境变量 RSTUDIO_CONNECT_SERVER 由 travis-ci 设置
connectServer <- Sys.getenv("RSTUDIO_CONNECT_SERVER") # https://bookdown.org
apiKey <- Sys.getenv("RSTUDIO_CONNECT_API_KEY")
