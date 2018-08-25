pkg <- .packages(all.available = TRUE)
pkgInfo <- lapply(pkg, packageDescription,
                  fields = c("Package", "Version", "Maintainer", "Title")
)
knitr::kable(
  data.frame(
    Package = sapply(pkgInfo, `[[`, 1),
    Version = sapply(pkgInfo, `[[`, 2),
    # Maintainer = sapply(pkgInfo, "[[", 3),
    Title = sapply(pkgInfo, "[[", 4)
  ),
  caption = "R包信息列表", booktabs = TRUE, longtable = TRUE
)
