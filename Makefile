all: results/ex1_4.md

clean: 
	rm -f results/*

data/testdata.tsv: src/ex1_1.R
	Rscript src/ex1_1.R https://raw.githubusercontent.com/STAT545-UBC/STAT545-UBC.github.io/master/gapminderDataFiveYear.txt data/testdata.tsv

results/summarized_data.csv: src/ex1_2.R data/testdata.tsv
	Rscript src/ex1_2.R data/testdata.tsv results/summarized_data.csv

results/gdpPercap_vs_lifeExp.png: src/ex1_3.R results/summarized_data.csv
	Rscript src/ex1_3.R results/summarized_data.csv results/gdpPercap_vs_lifeExp.png

results/ex1_4.md: src/ex1_4.Rmd results/summarized_data.csv results/gdpPercap_vs_lifeExp.png data/testdata.tsv
	Rscript -e 'rmarkdown::render("src/ex1_4.Rmd", output_dir = "results")'


