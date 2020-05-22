devmatrix <- matrix(data= c(0,0,0,0,14,0,2,6,4,2,0,0,3,5,6,0,3,9,2,0,2,2,8,1,1,7,7,0,0,0,3,2,6,3,0,2,5,3,2,2,6,5,2,1,0,0,2,2,3,7), ncol=5, byrow=TRUE)

atm <- function(x) {
	ret <- list()
	for (v in c(500,200,100,50,20,10,5)) {
		num <- x %/% v
		x <- x - (v*num)
		ret[[as.character(v)]] <- num
	}
	ret
}

po <- function(m) {
	mean(apply(m, 1, function(x) { sum(x*(x-1))/(sum(x)*(sum(x)-1)) }))
}

pe <- function(m, N=nrow(m), n=sum(m[1,])) {
	sum(apply(m, 2, function(x) {sum(x)/(N*n)})**2)
}
