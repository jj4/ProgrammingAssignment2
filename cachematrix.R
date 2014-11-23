## The functions below create a matrix and caculates its inverse and
## then caches that value in the object.


## The first function makeCacheMatrix takes a matrix as an argument
## and creates the matrix object.  

## The function  provides 4 methods, get, set, getinverse and setinverse

## The set function takes another matrix as an arugument and sets x (matrix object)
## as value and resets m (inverse matrix)

## The get function returns the matrix object

## setinverse calles the solve function on the matrix object and 
## assigns it to m

## getinverse returns the value of m which is either NULL or the inverse of x

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
          x <<- y
          m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve will take a matrix X and attempt to get the inverse.
## if the inverse on the matrix x hasn't been calculated, getinverse will
## return NULL and the function will calculate the inverse matrix
## and cache the value in x

## If the inverse already has been calculated, it will print
## the message and return the cached value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        #print(m)
        if (!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        #print(data)
        m <- solve(data)
        x$setinverse(m)
        m

        
}
