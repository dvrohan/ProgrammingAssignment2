## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## get,set methods of the matrix and its inverse are defined here.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()
    x
  setinverse <- function(inverse)
    m <<- inverse
  getinverse <- function()
    m
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Write a short comment describing this function

##The matrix inverse is retrieved from the cache if found in cache else is stored

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(x)
  x$setinverse(m)
  m
  ## Return a matrix that is the inverse of 'x'
}
