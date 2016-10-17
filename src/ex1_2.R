# Second script that reads the data from the first script, performs some analysis (e.g., creates a summary table) and
# writes these numerical data to file in CSV or TSV format. This should take two arguments:
# a path/filename pointing to the data
# a path/filename where to write the file to and what to call it (e.g., results/summarized_data.csv)

args <- commandArgs(trailingOnly=TRUE)

input_file <- args[1]
outputname <- args[2]


data <- readr::read_tsv(input_file)

library(tidyverse)

# tmp <- data %>% 
# print(paste0(as.name(tmp[[5]]),"duh"))
data$tmp1 <- data[[5]]
data$tmp2 <- data[[6]]

summarized_data <- data %>%
  mutate(col1 = tmp1,
         col2 = tmp2) %>%  
  group_by(data[[1]]) %>% 
  summarise(summ1 = min(col1),
            summ2 = min(col2)) %>% 
  arrange(summ1)
colnames(summarized_data) <- c(colnames(data)[1],colnames(data)[5:6])

readr::write_csv(summarized_data, outputname)

# sample usage
# Rscript src/ex1_2.R data/testdata.tsv results/summarized_data.csv
#         script      argument 1        argument 2
