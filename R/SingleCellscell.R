#'Reads FACS data and put it into a scell object
#'@param InputFile Index sort data input file containing expression data
#'@export SingleCellData
SingleCellData <- function(sco,InputFile){

  exp.vals <- read.delim(InputFile,row.names=1,header=T,sep="\t")
  sco@facs <- as.matrix(t(exp.vals)) # columns - always the cells
  sco@facs <- sco@facs[,colnames(sco@data)]
  sco
  }

