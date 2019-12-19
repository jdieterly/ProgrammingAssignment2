## Caching the inverse of a matrix

## Function to create a matrix to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
     inv <- null
     set <-function(y){
          x <<-y
          inv <<-null
          
     }
     get <-function ()x
     setInverse <- function(inverse) inv <<- inverse
     getInverse <- function() inv
     list(set = set,
          get = get,
          setInverse = setInverse,
          getInverse = getInverse)
}


## create a matrix created by the function makecacheMatrix.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv <- x$getInverse()
     if (!is.null(inv)) {
          message ("getting cached data")
          return (inv)
     }
     mat <- x$get()
     inv <- solve(mat, ...)
     x$setInverse(inv)
}
