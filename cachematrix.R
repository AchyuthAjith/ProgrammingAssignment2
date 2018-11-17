## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL   ##setting ti null
  set <- function(y) ##function
  {
  x <<- y
  inv <<- NULL
  }
  get <- function() x
  set Inverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()##inverse
  if(!is.null(inv))##if condition
    {
    message("getting cached data")##printing message
    return(inv) ##returning the value
    }
  data <- x$get()   ##fetching the data    
  inv <- solve(data)  ##inverse   
  x$setInverse(inv)
  inv  ##inverse
}
