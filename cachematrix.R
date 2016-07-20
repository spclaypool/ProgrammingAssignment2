makeCacheMatrix <- function(x = matrix()) {
#initialize values 
    m <- NULL
    set <- function(y) {
        x <<- y 
        m <<- NULL
    }
#get/set values of matrix
    get <- function() x
    setmatrix <- function(solve) m <<- solve
    getmatrix <- function() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
}

#get/set inverse of matrix from above

cacheSolve <- function(x = matrix(), ...) {
    m <- x$getmatrix()
    if(!is.null(m)) {
        message("getting cashed data")
        return(m)
    }
    matrix <- x$get()
    m <-solve(matrix, ...)
    x$setmatrix(m)
    m
}
