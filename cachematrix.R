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



