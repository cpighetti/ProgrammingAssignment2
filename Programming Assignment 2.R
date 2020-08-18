
## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
## makeCacheMatrix creates a special object in the data categorized as a matrix that can cache the inverse of x funtion.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL  
}


## Write a short comment describing this function
## Solves the inverse of the matrix created by makeCacheMatrix
cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
  }