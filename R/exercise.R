devmatrix <- matrix(data= c(0,0,0,0,14,0,2,6,4,2,0,0,3,5,6,0,3,9,2,0,2,2,8,1,1,7,7,0,0,0,3,2,6,3,0,2,5,3,2,2,6,5,2,1,0,0,2,2,3,7), ncol=5, byrow=TRUE)

atm <- function(amount) {
    List <- list(A="500", B="200", C="100", D="50", E="20", F="10", G="5")
    List2 <- list(0, 0, 0, 0, 0, 0, 0)
    if(amount  %% 5 == 0 && amount != 0) {
        for (col in 1:length(List)) {
            a <- amount / List[[col]] 
            roundDown <- floor(a)
            List2[[col]] <- roundDown 
            amount <- amount - List[[col]] * roundDown
        }    
        print(List)
        print(List2)
    } else print("Please enter a valid amount.")
}
                 
    
# ursprüngliche Lösung
# atm <- function(amount) {
#     mtrx <- matrix(c(500, 200, 100, 50, 20, 10, 5, 0, 0, 0, 0, 0, 0, 0), nrow = 2, ncol = 7, byrow = TRUE)
     
#     if(amount  %% 5 == 0 && amount != 0) {
#        for (col in 1:ncol(mtrx)) {
#             a <- amount / mtrx[[1, col]] 
#             roundDown <- floor(a)
#             mtrx[[2, col]] <- roundDown 
#             amount <- amount - mtrx[[1, col]] * roundDown 
#         }    
#         print(mtrx)  
#     } else print("Please enter a valid amount.")
# }

