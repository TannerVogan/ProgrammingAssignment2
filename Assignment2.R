makeCacheMatrix <- function(x = matrix()) {
  invMAtrix <- NULL
  ## next, set the matrix value
  setMatrix <- function(y) {
    x << y
    invMatrix <<- NULL
  }
  
  getMatrix <- function() x
  setInverse <- function(inverse) invMatrix <<- inverse
  getInverse <- function() invMatrix
  list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
    invMAtrix <- z$getInverse()
    if(!is.null(invMatrix)) {
      message("Retrieving cached inv matrix")
      return(invMatrix)
    }
    
    MatrixData <- z$getMatrix()
    invMatrix <- solve(MatrixData, ...)
    z$setInverse(invMatrix)
    return(invMatrix)
}
