
setwd("/home/marschall/LOGG/jekyll-now-master")

knit_post <- function(input, base.url = "/") {
  library(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll(highlight = c("pygments"))
  knit(input, envir = parent.frame())
}

knit_post("Rmd/2014-10-30-sum-over-one.Rmd", "http://mlfurman.github.io/")
