# Third script that reads the output of the second script, generate some figures and save them to files. 
# This should take two arguments:
# a path/filename pointing to the data
# a path/filename prefix where to write the figure to and what to call it (e.g., results/this_analysis)

args <- commandArgs(trailingOnly=TRUE)

input_file <- args[1]
plotname <- args[2]

summdata <- readr::read_csv(input_file)

library(tidyverse)

summary_plot <- ggplot(summdata, aes(x = summdata[[2]], y = summdata[[3]]))+
  geom_point()+
  xlab(colnames(summdata)[2])+
  ylab(colnames(summdata)[3])+
  geom_smooth()

ggsave(plotname, summary_plot)

# Rscript src/ex1_3.R results/summarized_data.csv results/gdpPercap_vs_lifeExp.png