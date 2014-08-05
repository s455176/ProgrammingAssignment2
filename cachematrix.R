## Put comments here that give an overall description of what your
## functions do
## follow the the sample code in the spec which is on the assignment2 web page 
## and change the cache vector to cache matrix 

## Write a short comment describing this function
## construct the matrix and retun it 

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
## calculate the invert matrix of the given cache matrix and cache it in the 
## variable invert_m 

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
