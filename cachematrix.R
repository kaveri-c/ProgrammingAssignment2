## This function caches the time consuming computation
## like matrix operations

## <<- is the operator to assign a value to an object in an 
## environment that is different from the current environment
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Calculates the inverse of the matrix

cacheSolve <- functon(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
      
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
    
}

