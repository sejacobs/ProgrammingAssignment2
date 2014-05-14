## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this first function will take your matrix and created a cached matrix

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolution <- function(solution) s <<- solution
  getsolution <- function() s
  list(set = set, get = get,
       setsolution = setsolution,
       getsolution = getsolution)
}

###this outer function will solve for the inverse matrix, and return the inverse matrix

cachesolution <- function(x, ...) {
  s <- x$getsolution()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolution(s)
  s
}
