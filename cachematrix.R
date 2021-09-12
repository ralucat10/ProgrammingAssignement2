
## This code creates a object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
i <-NULL
set<-function(y){
  x<<-y
  i<<-NULL
}
get<-function() x
setinverse<-function(inverse) i <<-inverse
getinverse<-function()i
list(set=set, get=get,setinverse=setinverse, getinverse=getinverse)
}


## This code returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  i<-x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  result<-x$get()
  i<-solve(result,...)
  x$setinverse(i)
  i
     
}
