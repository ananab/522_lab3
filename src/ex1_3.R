# Third script that reads the output of the second script, generate some figures and save them to files. 
# This should take two arguments:
# a path/filename pointing to the data
# a path/filename prefix where to write the figure to and what to call it (e.g., results/this_analysis)

args <- commandArgs(trailingOnly=TRUE)
# set up arguments
input_file <- args[1]
plotname <- args[2]

# read data table from input file given by argument 1
summdata <- readr::read_csv(input_file)

# load tidyverse library
library(tidyverse)

# draw plot with ggplot2, plot the second column of summary table against the third column
summary_plot <- ggplot(summdata, aes(x = summdata[[2]], y = summdata[[3]]))+
  geom_point()+
  # label column names
  xlab(colnames(summdata)[2])+
  ylab(colnames(summdata)[3])+
  # get trend line
  geom_smooth()
# save plot created to output name given by argument 2
ggsave(plotname, summary_plot)

# sample usage:
# Rscript src/ex1_3.R results/summarized_data.csv results/gdpPercap_vs_lifeExp.png
#         script      argument 1                  argument 2