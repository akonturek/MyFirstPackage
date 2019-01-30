#'reads the input file and makes an scell object immediately
#'@param InputFile any input file containing expression data
#'@export LoadData
LoadData <- function(InputFile){

  exp.vals <- read.delim(InputFile,row.names=1,header=T,sep="")
  Newscell <- new("scell",data=as.matrix(exp.vals))
  Newscell

}

#writting packages
#first define the parameters and export file, then write a functin, save and call with document() and install
#check the package in new R session (terminal()
#man - manual
# test comment
