## Put comments here that give an overall description of what your
## functions do

## the assignment contains 2 functions the first one caches the result of the
## matrix inverse

## the second function check up the value of the matrix inverse if it's null
## then it generate the function inverse and pass it to the cache 



## Write a short comment describing this function

## first we set the cache to null in case the matrix has no inverse yet
## and by using set , get we can change the value of the matrix
## setInverse , getInverse are used to control and montior the cache value

makeCacheMatrix <- function(x = matrix()) {
    cache <- NULL
    
    set <- function(y){
        x<<-y
        cache <<- NULL
    }
    
    get <- function(){
        x
    }
    
    setInverse <- function(inverse){
        cache <<- inverse
    }
    
    getInverse <- function(){
        cache
    }
    list(set = set, get = get,
         setInverse = setInverse, 
         getInverse = getInverse)
}


## Write a short comment describing this function
## used to produce the inverse matrix if the value of the cache is null
cacheSolve <- function(x, ...) {
    
    cache <- x$getInverse()
    
    if(!is.null(cache)){
        return(cache)
    }
    m <- x$get()
    inverse <- solve(m)
    x$setInverse(inverse)
    
        ## Return a matrix that is the inverse of 'x'
}
