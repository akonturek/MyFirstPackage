#'Generate a heatmap of N variable genes determined in GetVarGenes
#'@param sco An scell S4 object
#'@export HeatMapVarGenes
HeatMapVarGenes <- function (sco){
  vardata <- sco@data[sco@var.genes,] # from the data sco we select only variable genes and put them in the matrix "vardata"
  pheatmap(vardata) # call heatmap of vardata generated before
}
