# Second script that reads the data from the first script, performs some analysis (e.g., creates a summary table) and
# writes these numerical data to file in CSV or TSV format. This should take two arguments:
# a path/filename pointing to the data
# a path/filename where to write the file to and what to call it (e.g., results/summarized_data.csv)

args <- commandArgs(trailingOnly=TRUE)

# set arguments
input_file <- args[1]
outputname <- args[2]

# read data in from input file given in argument 1
data <- readr::read_tsv(input_file)

# load tidyverse library
library(tidyverse)

# create temperory columns storing the 5th and 6th columns of input data, assuming that these are meaningful variables
# do this so that the columns have useful colnames
data$tmp1 <- data[[5]]
data$tmp2 <- data[[6]]

# summarise the input data, group by the first column assuming this is a meaningful categorical variable
summarized_data <- data %>%
  mutate(col1 = tmp1,
         col2 = tmp2) %>%  
  group_by(data[[1]]) %>% 
  # summarise the minimum value of original columns 5 and 6 in the input data file. In this case (with gapminder) gdpPercap and lifeExp.
  summarise(summ1 = min(col1),
            summ2 = min(col2)) %>% 
  # arrange by minimum column 5
  arrange(summ1)
# assign back original column names, in the example data country, gdpPercap, and lifeExp
colnames(summarized_data) <- c(colnames(data)[1],colnames(data)[5:6])

# write the summmarized data table to outputname given by argument 2
readr::write_csv(summarized_data, outputname)

# sample usage
# Rscript src/ex1_2.R data/testdata.tsv results/summarized_data.csv
#         script      argument 1        argument 2
