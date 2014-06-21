##  Example usage:

##  import functions
source("cachematrix.R")

##  create a inversible matrix
m <- cbind(c(1,1), c(1,2)) 

##      [,1] [,2]
##[1,]    2   -1
##[2,]   -1    1


##  crate cache object
cahcedM <- makeCacheMatrix(m)

##  1 call: solve
cacheSolve( cahcedM )

##solving.. cached data
##      [,1] [,2]
##[1,]    2   -1
##[2,]   -1    1

##  2 call: use cache
cacheSolve( cahcedM )

##getting cached data
##      [,1] [,2]
##[1,]    2   -1
##[2,]   -1    1