## Functions makeCacheMatrix and cacheSolve can be used to find inverse of Matrix 
##and avoid unnecessary recalculation if an inverse has already been found.

## Function makeCacheMatrix create special Matrix, which cache its inverse
makeCacheMatrix <- function(x = matrix()) 
{
        M <- NULL
        
set <- function(y) {
                
x <<- y
                
M <<- NULL
        
}
        
get <- function() x

##solve function returns inverse of Matrix
        
setMatrix <- function(solve) M <<- solve
       
 getMatrix <- function() M
        
list(set = set, get = get,
          
   setMatrix = setMatrix ,
           
  getMatrix = getMatrix )

}

## Function cacheSolve checks, if the inverse of Matrix has been calculated. If was
## calculated, then returns an inverse from the cache. If no, then function computes
## an inverse of Matrix.

cacheSolve <- function(x, ...) {
## return inverse of Matrix
 M <- x$getMatrix()
       
 if(!is.null(M)) {
               
 message("getting cached data")
           
     return(M)
        }
      
  Matrix <- x$get()
    
    M <- solve(Matrix)
      
  x$setMatrix(M)
      
  M

}
