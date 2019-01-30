#'Calculate a tSNE over 3 dims using the variable genes only
#'@param sco An scell S4 object
#'@export CalcTSNE

CalcTSNE <- function(sco){
  var.data <- t(sco@data[sco@var.genes,]) # transpose the matrix, by default it calculates by row, and rows = genes, otherwise calculates tsne for the genes not for cells

  tsne.out <- Rtsne(var.data, dim=3) # make sure that in the description you have Rtsne, ensure that within the class you can create tsne (add into scell script)
  sco@tsne <- tsne.out$Y
  sco

}
