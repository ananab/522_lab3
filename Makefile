#!/usr/bin/make -f

# tag all. ex1_4.md is dependent on all other outputs and scripts its the only one needed here
all: results/ex1_4.md

# give clean tag to remove all results in results folder as well as data downloaded
clean: 
	rm -f results/*
	rm -f data/*

# data downloaded is dependent on ex1_1.R under src directory
data/testdata.tsv: src/ex1_1.R
	Rscript src/ex1_1.R https://raw.githubusercontent.com/STAT545-UBC/STAT545-UBC.github.io/master/gapminderDataFiveYear.txt data/testdata.tsv

# summarized table is dependent on ex1_2.R under src directory, which uses the data downloaded previously
results/summarized_data.csv: src/ex1_2.R data/testdata.tsv
	Rscript src/ex1_2.R data/testdata.tsv results/summarized_data.csv

# the plot generated is dependent on ex1_3.R under src directory, which uses the summary table created previously
results/gdpPercap_vs_lifeExp.png: src/ex1_3.R results/summarized_data.csv
	Rscript src/ex1_3.R results/summarized_data.csv results/gdpPercap_vs_lifeExp.png

# the md report is rendered by the R Markdown script, which uses previous results as well as data downloaded 
results/ex1_4.md: src/ex1_4.Rmd results/summarized_data.csv results/gdpPercap_vs_lifeExp.png data/testdata.tsv
	Rscript -e 'rmarkdown::render("src/ex1_4.Rmd", output_dir = "results")'


