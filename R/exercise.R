devmatrix <- matrix(data= c(0,0,0,0,14,0,2,6,4,2,0,0,3,5,6,0,3,9,2,0,2,2,8,1,1,7,7,0,0,0,3,2,6,3,0,2,5,3,2,2,6,5,2,1,0,0,2,2,3,7), ncol=5, byrow=TRUE)

atm <- function(amount) {
  notes = list(500, 200, 100, 50, 20, 10, 5)
  returned <- list("500"=0, "200"=0, "100"=0, "50"=0, "20"=0, "10"=0, "5"=0)
  for(note in notes) {
    print(amount)
    floored <- floor(amount / note)
    returned[toString(note)] = floored
    amount <- amount - note*floored
  }
  returned
}