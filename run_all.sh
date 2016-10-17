#!/usr/bin/env bash

# run ex1_1.R in the src directory using Rscript, download the test data from given url and store it in the data directory
Rscript src/ex1_1.R https://raw.githubusercontent.com/STAT545-UBC/STAT545-UBC.github.io/master/gapminderDataFiveYear.txt data/testdata.tsv

# run ex1_2.R in the src directory using Rscript, input from test data downloaded by ex1_1.R, output a summary table to the results directory.
Rscript src/ex1_2.R data/testdata.tsv results/summarized_data.csv

# run ex1_3.R in the src directory using Rscript, input from summary table generated by ex1_2.R, output a plot to the results directory.
Rscript src/ex1_3.R results/summarized_data.csv results/gdpPercap_vs_lifeExp.png

# run ex1_4.Rmd in the src directory using Rscript, render a Markdown file to the results directory.
Rscript -e 'rmarkdown::render("src/ex1_4.Rmd", output_dir = "results")'
