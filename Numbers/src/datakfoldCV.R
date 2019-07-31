## ---------------------------
##
## Script name: datakfoldCV.R
##
## Purpose of script: Create train and test samples from a kfold (parameter to insert) CV of a given data
##
## Author: Sandra Benitez-Pena
##
## Date Created: 2019-07-31
##
## Copyright (c) Sandra Benitez-Pena, 2019
## Email: sbenitez1@us.es
##
## ---------------------------


datakfoldCV <- function(data,kfold){
  
  
  datatrain <- list()
  datatest <- list()
  
  
  indexes <- c()
  for(i in c(1:kfold)){
    indexes <- c(indexes,round((nrow(data)-1)/kfold*(i-1)+1))
  }
  indexes <- c(indexes,nrow(data))
  
  
  for(k in c(1:kfold)){
    #Here, we create train/test
    datatest[[k]] <- data[c(indexes[k]:indexes[k+1]),]
    datatrain[[k]] <- data[-c(indexes[k]:indexes[k+1]),]
  }
  
  
  return(list("train" = datatrain,"test" = datatest))
  
  
}