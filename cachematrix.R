## Put comments here that give an overall description of what your
## functions do
Hi!These functions allows us to compute the inverse of any sqare matrix.
## Write a short comment describing this function
This function coputrs the inverse from the input.
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setinv <- function(inverse) inv <<- inverse
getinv <- function() inv
list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
And this function computes the inverse of the special matrix obtaines on the function above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
if(!is.null(inv)) {
message("getting cached result")
return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv
}
