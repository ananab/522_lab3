# Exercise 1 - Writing an analysis that uses multiple R scripts

# 1. First script that downloads some data and save it locally. This should take
# two arguments:
#   - a URL pointing to the data
# - a path/filename where to write the file to and what to call it (*e.g.,* `data/data.csv`)
args <- commandArgs(trailingOnly=TRUE)
library(tidyverse)

input_url <- args[1]
destname <- args[2]

download.file(url = input_url, destfile = destname, method = "curl")
# sample usage:
# Rscript src/ex1_1.R https://raw.githubusercontent.com/STAT545-UBC/STAT545-UBC.github.io/master/gapminderDataFiveYear.txt data/testdata.tsv
#         script      argument 1                                                                                           argument 2


