## Put comments here that give an overall description of what your
## functions do

## creates a matrix which sets and gets the value of the matrix
## and sets and gets the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
      x <<- y
      m <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m 
    list(set = set, get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
}


## calculates the inverse of the matrix created with the above function
## first checks to see if the inverse has already been calculated

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m
}
