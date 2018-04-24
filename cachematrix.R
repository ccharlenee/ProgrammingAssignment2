## Put comments here that give an overall description of what your
## functions do

## Function that can make 1. set value of matrix, 2. get value of matrix, 3. set value of matrix inverse, 4. get value of matrix inverse

makeCacheMatrix <- function(x = matrix()) {
	
			m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Computes inverse of a matrix. If inverse was computed and saved before, extract it from cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
        
        
        
}
