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


numerostand <- function(chain){
  aux <- (chain - min(chain))/(max(chain) - min(chain))
  for(k in c(1:length(aux))){
    if(aux[k] >= 0.4){aux[k] = 1}else{aux[k] = 0}
  }
  return(aux)
}



plotmatnumber <- function(number){
  standNumber <- numerostand(number)
  plot(100,xlim=c(1,29),ylim=c(1,29),xlab="",ylab="")
  for( j in c(1:28)){
    for( i in c(1:28)){
      p <- rect(i,30-j,i+1,30-j-1,col=as.character(standNumber[ i + (j-1)*28]))
    }
  }
  return(p)
}



