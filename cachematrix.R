## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## function to create matrix object for caching its inverse

makeCacheMatrix <- function(x = matrix()) {

## Initialize inverse property

	i <- NULL

## Method to set matrix

set <- function( matrix ) {

	x <<- matrix

        i <<- NULL

}

## Method the get matrix

get <- function() {

## Return matrix

x

}

## Method to set the inverse of matrix

setInverse <- function(inverse) {

	i <<- inverse

}

## Method to get the inverse of matrix

	getInverse <- function() {

## Return the inverse

        i

    }

## Return a list of set/get methods

    list(set = set, get = get,

    setInverse = setInverse,

    getInverse = getInverse)

}

## Write a short comment describing this function

## calculates inverse of makeCacheMatrix object - retrieves inverse from  
## cache if already calculated and matrix unchanged


cacheSolve <- function(x, ...) {

## Return matrix that is inverse

	m <- x$getInverse()

## Return the inverse if already set

    if( !is.null(m) ) {

            message("getting cached data")

            return(m)

    }

## Get the matrix from object

    data <- x$get()

## Calculate inverse 

    m <- solve(data) %*% data

## Set inverse

    x$setInverse(m)

## Return matrix

    m


}