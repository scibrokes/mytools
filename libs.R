## Setup Options, Loading Required Libraries and Preparing Environment

## Setting to omit all warnings
options(warn=-1)

## Loading the package 'BBmisc'
if(suppressMessages(!require('BBmisc'))){
  install.packages('BBmisc')}
suppressMessages(library('BBmisc'))

#'@ if(suppressAll(!require('devtools'))){
#'@   suppressAll(install.packages('devtools'))}
#'@ if(suppressAll(!require('BiocParallel'))){
#'@   suppressAll(devtools::install_github('Bioconductor/BiocParallel'))}

## http://www.r-bloggers.com/new-package-dplyrr-utilities-for-comfortable-use-of-dplyr-with-databases
## direct connect to database (if any)
#'@ if(!'dplyrr' %in% installed.packages()){
#'@   devtools::install_github("hoxo-m/dplyrr")}
#'@ install.packages('nycflights13')
#'@ library(c('dplyrr', 'nycflights13'))

## Loading multiple packages at once
pkgs <- c('devtools', 'zoo', 'chron', 'stringr', 'reshape', 'reshape2', 'sparkline', 'lme4', 'spedglm',
          'DT', 'plyr', 'dplyr', 'purrr', 'magrittr', 'foreach', 'manipulate', 'ggplot2', 'ggthemes',
          'PerformanceAnalytics', 'plotly', 'doParallel', 'XML', 'RCurl', 'httr', 'rvest', 'RSelenium', 
          'googleVis', 'highlightHTML', 'knitr', 'rmarkdown', 'scales', 'lubridate', 'tidyr', 'whisker', 
          'grid', 'gridExtra', 'arules', 'arulesViz')
#'@ c('memoise', 'RStudioAMI', 'pander', 'parallel', 'sqldf', 'BiocParallel', 'doMC', 'editR') #load if needed
suppressAll(lib(pkgs)); rm(pkgs)

## Creating a parallel computing Cluster and support functions.
## Preparing the parallel cluster using the cores
doParallel::registerDoParallel(cores = 16)
#'@ BiocParallel::register(MulticoreParam(workers=8))

## Set the googleVis options first to change the behaviour of plot.gvis, so that only the chart 
##  component of the HTML file is written into the output file.
op <- options(gvis.plot.tag='chart')


