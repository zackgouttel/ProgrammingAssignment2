## the Makecachematrix creates a list containing 2 matrices " Let's Say A and its inverse A^-1"
## and 2 functions which are used to get and set the inverse matrix.

## I Used the Matlib package in these functions

library(matlib)
makeCachematrix<-function(x= matrix())
{ x<- NULL
set <- function(y) {
  x <<- y
  y <<- NULL
}
get <- function() x
setinverse <- function() m <<- inv(x)
getinverse <- function() m
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)

}
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- inv(data, ...)
  x$setinverse(m)
  m
}