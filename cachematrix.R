## test your code
source("cachematrix.R")
## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
}
## generate the matrix, and inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
special.matrix #
## this should take long, since it's the first go
print("Solving the matrix for the first time.")
##time1 special.solved.1 time2 print(time2 - time1)
##this should be lightning fast
print("Solving the matrix for the second time.")
##time1 special.solved.2 time2 print(time2 - time1)
## check if all solved matrices are identical
print(identical(mymatrix.inverse, special.solved.1))
print(identical(mymatrix.inverse, special.solved.2))
## should return TRUE
