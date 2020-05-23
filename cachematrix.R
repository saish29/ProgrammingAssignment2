## A couple of functions that cache the inverse of a matrix


## Create a matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  
  ## Inverse property initialization 
    i <- NULL
  
  ## Setting the Matrix
  setMatrix <- function(matrix) {
   m <<- matrix
   i <<- NULL
  }
  
  ## Getting the Matrix
  getMatrix <- function(matrix) {
    
    ## Return matrix
    m
  }
  
  ## Inversing Matrix function
  setInverse <- function(inverse) {
    i <<- inverse
      
  }
  
  ## Getting the Inverse Matrix function
  getInverse <- function() {
    # Returning inverse property
    i
  }
  
  ## Return all the methods in a list
  Flist(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
  
}


## Compute the inverse of the matrix returned by "makeCacheMatrix" function above.
## If the inverse is calculated already (and the matrix has not changed), then the "solveCache" should get the inverse from the cache.
solveCache <- function(x, ...) {
  
  ## Returning a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  ## Just returning the inverse if its already set
  if( !is.null(m) ) {
    message("Getting cached data")
    return(m)
  }
  
  ## Get the matrix from our function
  data <- x$getMatrix()
  
  ## Calculate the inverse using matrix multiplication
  m <- solve(data) %*% data
  
  ## Setting the inverse to the object
  x$setInverse(m)
  
  ## Returning the matrix
  m
}



