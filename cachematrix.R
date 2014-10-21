## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special matrix object and defines the list of functions 
##needed in the next function

makeCacheMatrix <- function(x = matrix()) {
  rsl<-NULL
  set<-function(y){
    x<<-y
    rsl<<-NULL
  }
  get<-function()x
  setreverse<-function(solve)rsl<<-solve
  getreverse<-function()rsl
  list(set=set,get=get,setreverse=setreverse,getreverse=getreverse)
}


## Write a short comment describing this function
##cacheSolve computes the inverse of the spetial matrix created, and let the program
##verify if the inverse has been already calculated or if it is stil needs computing
cacheSolve <- function(x, ...) {
  rsl<-x$getreverse()
  if(!is.null(rls)){
    message("getting cached data")
    return(rsl)
  }
  data<-x$get()
  rsl<-solve(data,...)
  x$setreverse(rsl)
  rsl
}
}
