## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	invert_m <- NULL
	set <- function(y) {
		x <<- y
		invert_m <<- NULL
	}
	get <- function() x
	setinvert <- function(invert_matrix) invert_m <<- invert_matrix
	getinvert <- function() invert_m
	list(set = set, get = get, 
		setinvert = setinvert, 
		getinvert = getinvert)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	invert_m <- x$getinvert()
	if(!is.null(invert_m)) {
		message("getting cached data")
		return(invert_m)
	}
	data <- x$get()
	invert_m <- solve(data)
	x$setinvert(invert_m)
	invert_m
}
