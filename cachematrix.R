##This function creats a special matrix, can set the value of matrix, 
##get the value of matrix, set the value of inverse, get the value of inverse.

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

## This function first check whether the inverse has been made, if not, it will calculate by the following sentences,
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
