## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    inv <- NULL

    set <- function(matrix) {
        m <<- matrix
        inv <<- NULL
    }


    get <- function() {
            m
    }

    setInverse <- function(inverse) {
        inv <<- inverse
    }

    getInverse <- function() {
        inv
    }
        list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

    m <- x$getInverse()
    if (!is.null(m)) {
        return(m)
    }

    var <- x$get()
    m <- solve(var) %*% var
    x$setInverse(m)
    m

}
