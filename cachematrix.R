## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  cache <- NULL
  
  set <- function(y) {
    x <<- y
    cache <<- NULL
  }
  
  get <- function() x
  
  setinverse <- function(inverse) cache <<- inverse
  getinverse <- function() cache
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  message("solving.. cached data")
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  
  m
  
}
