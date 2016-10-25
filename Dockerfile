FROM rocker/hadleyverse:latest

RUN wget https://cran.r-project.org/src/contrib/gapminder_0.2.0.tar.gz
RUN R CMD INSTALL gapminder_0.2.0.tar.gz

RUN wget https://cran.r-project.org/src/contrib/ggplot2_2.1.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/stringr_1.1.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/devtools_1.12.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/tidyverse_1.0.0.tar.gz

RUN R CMD INSTALL ggplot2_2.1.0.tar.gz
RUN R CMD INSTALL stringr_1.1.0.tar.gz
RUN R CMD INSTALL devtools_1.12.0.tar.gz
RUN R CMD INSTALL tidyverse_1.0.0.tar.gz

ADD data/ /home/rstudio/data

ADD Makefile /home/rstudio/

ADD run_all.sh /home/rstudio/
ADD src /home/rstudio/src
ADD results /home/rstudio/results