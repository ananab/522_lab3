#DSCI_522_lab_3_he_kai

DSCI 522 lab 3 for Kai He (hknaicha)

|directory|file|nature|usage|
|---------|----|------|-----|
|[root](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai)|[lab3.md](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/lab3.md)|Markdown instruction for lab3|open in Rstudio or view on github|
|[root](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai)|[run_all.sh](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/run_all.sh)|driver bash script to run all scripts|`bash run_all.sh`|
|[root](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai)|[Makefile](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/Makefile)|Makefile to run all scripts or clean all results|`make` or `make clean`|
|[root](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai)|[dependency.png](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/dependency.png)|dependency graph for [Makefile](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/Makefile)|Open as png file or view on github|
|[src](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/tree/master/src)|[ex1_1.R](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/src/ex1_1.R)|first R script for exercise 1, downloads data from url|`Rscript src/ex1_1.R <url> <destination>`|
|[src](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/tree/master/src)|[ex1_2.R](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/src/ex1_2.R)|second R script for exercise 1, creates summary table from downloaded data|`Rscript src/ex1_2.R <input data> <output name>`|
|[src](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/tree/master/src)|[ex1_3.R](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/src/ex1_3.R)|third R script for exercise 1, generate plot from summary table|`Rscript src/ex1_3.R <input table> <plot name>`|
|[src](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/tree/master/src)|[ex1_4.Rmd](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/src/ex1_4.Rmd)|R Markdown for exercise 1, render md report using previous results|`Rscript -e 'rmarkdown::render("src/ex1_4.Rmd", output_dir = <out dir>)'`|
|[data](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/tree/master/data)|[testdata.tsv](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/data/testdata.tsv)|test data downloaded by [ex1_1.R](https://github.ubc.ca/ubc-mds-2016/DSCI_522_lab_3_he_kai/blob/master/src/ex1_1.R) from url|read in as tsv file|



![make file dependency graph](dependency.png)
