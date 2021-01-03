## Put comments here that give an overall description of what your
## functions do

## makeCachematrix consists of set, get, setinv, getinv
## library(MASS) is used to calculate inverse for non squared as well as square matrices
library(MASS)
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
<<<<<<< HEAD
                     x <<- y 
                     inv <<- NULL
                     }
  get<- function()x
  setinv <- function(inverse) inv <<- inverse 
  getinv <- function(){
                   inver <- ginv(x)
                   inver%*%x
                   }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}
=======
                    x <<- y 
                    inv <<- NULL
  }
  get<- function()x
  setinv <- function(inverse) inv <<- inverse 
  getinv <- function(){
      inver <- ginv(x)
      inver%*%x
   }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
   }
>>>>>>> d2a7453366e457d01d843ee457168728de03a1dd

## Write a short comment describing this function
## This is usted to get the cache data

cacheSolve <- function(x, ...) 
<<<<<<< HEAD
{
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
                   message("getting cached data!")
                   return(inv)
=======
  {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
      message("getting cached data!")
      return(inv)
>>>>>>> d2a7453366e457d01d843ee457168728de03a1dd
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
<<<<<<< HEAD
}
=======
  }
>>>>>>> d2a7453366e457d01d843ee457168728de03a1dd
