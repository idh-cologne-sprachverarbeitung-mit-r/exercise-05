  atm <- function(soldi) {
    insieme.di.tagli <- list(500, 200, 100, 50, 20, 10, 5)
    insieme.di.risultati <- list()
    for (taglio in insieme.di.tagli) {
      risultato <- 0
      while (taglio <= soldi) {
        soldi <- soldi - taglio
        risultato <- risultato + 1;
        }
      append(insieme.di.risultati, risultato) -> insieme.di.risultati
      }
  names(insieme.di.risultati) <- insieme.di.tagli
  return(insieme.di.risultati)
  }

devmatrix <- matrix(data= c(0,0,0,0,14,0,2,6,4,2,0,0,3,5,6,0,3,9,2,0,2,2,8,1,1,7,7,0,0,0,3,2,6,3,0,2,5,3,2,2,6,5,2,1,0,0,2,2,3,7), ncol=5, byrow=TRUE)

#in the test pe(devmatrix) was 1.213, but in the wikipedia article was 0.213. I changed this in the test.
pe <- function(m) {
  numeratori <- colSums(m)
  denominatore <- nrow(m)*sum(m[1 ,])
  p <- as.double(numeratori)/denominatore
  expected.agreement <- sum(p^2)
  return(expected.agreement)
} 

#here in the explanation of the exercise I found "they are then divided by the total number of items (i.e. number of rows multiplied by the number of ratings". However, if I multiply the nrow(m)*sum(m[1 ,]) the result is not the same as in the wikipedia article. So I tried various ways of getting the right result and here is the solution.
po <- function(m) {
  risultato <- sum(m[1 ,])
  denominatore1 <- risultato*(risultato-1)

  denominatore2 <- nrow(m)
  pairwise.agreem <- rowSums(m*(m-1))
  obs.agreement <- sum(pairwise.agreem/denominatore1)/denominatore2
  return(obs.agreement)
}

