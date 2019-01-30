#'Clusters and split the data into N partitions
#'@param sco scells object
#'@param N N number of groups
#'@export Cluster
Cluster <- function(sco,N) {

  hc <- hclust(dist(t(sco@facs)), method="ward.D2")
  sco@groupsid <- cutree(hc, k=N)
  sco
}


