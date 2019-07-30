## ---------------------------
##
## Script name: matrix2plot.R
##
## Purpose of script: Draw number/images from matrix data (only black&white)
##
## Author: Sandra Benitez-Pena
##
## Date Created: 2019-07-30
##
## Copyright (c) Sandra Benitez-Pena, 2019
## Email: sbenitez1@us.es
##
## ---------------------------

source("matrix2plot.R") #To run function plotmatnumber(matrix)


saveNumberPlotstrain <- function(data){
  for(i in c(1:nrow(data))){
    png(paste0("plots/number_",i,"th.png"),width=400, height=400)
    plotmatnumber(data[i,-1])
    dev.off()
  }
}

saveNumberPlotstest <- function(data){
  for(i in c(1:nrow(data))){
    png(paste0("plots/number_",i,"th.png"),width=400, height=400)
    plotmatnumber(data[i,])
    dev.off()
  }
}


datatrain <- read.csv(file = "data/trainShort.csv")
datatest <- read.csv(file = "data/testShort.csv")

saveNumberPlotstrain(datatrain)
saveNumberPlotstest(datatest)
