## Two functions are to create a an object which stores the maatrix and inverse of a matrix and cache's its inverse


## Function makeCacheMatrix creates a special object which set and get matrix and set,get inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-functionI(y){
x<<-y
m<<-NULL
}
get<-function()x
setInverse<-function(Inverse)m<<-Inverse
getInverse<-function()m
list(set=set,get=get,
setInverse=setInverse,
getInverse=getInverse)

}


##The below vector checks if the inverse of the matrix created by above function is found then it gets the inverse from the 
##and skips the computation otherwise it finds the inverse and store it in cache.

cacheSolve <- function(x, ...) {
m<-x$getInverse()
if(!is.null(m)){
message("getting cached data wait...")
return(m)
}
data<-x$get()
m<-Inverse(data,...)
x$setInverse(m)
m
        ## Return a matrix that is the inverse of 'x'
}
