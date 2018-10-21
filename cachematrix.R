## Put comments here that give an overall description of what your
## functions do

makeCacheMatrix <- function(x = matrix()) {
        inversematrix <- NULL
        setmatrix <- function(y) {
                x <<- y
                inversematrix <<- NULL
        }
        getmatrix <- function() x
        setinverse <- function(inverse) inversematrix <<- inverse
        getinverse <- function() inversematrix
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        inversematrix <- x$getinverse()
        if(!is.null(inversematrix)) {
                message("getting inversed matrix")
                return(inversematrix)
        }
        matrixdata <- x$getmatrix()
        inversematrix <- sove(matrixdata, ...)
        x$setinverse(inversematrix)
        inversematrix
}
        ## Return a matrix that is the inverse of 'x'
}
