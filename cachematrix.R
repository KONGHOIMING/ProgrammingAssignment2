## Put comments here that give an overall description of what your
## functions do

## This function will cache an inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
     n<-NULL
     set<-function(y){
          x<<-y
          n<<-NULL
     }
     get<-function(){
          x
     }
     setInverse<-function(solve){
          n<<-solve
     }
     getInverse<-function(){
          n
     }
     list(set = set, get = get,
          setInverse = setInverse,
          getInverse = getInverse)
}


## This function will firstly check if the matrix has been inverted.If yes, return the matrix, 
## if no, return the inversed matrix.

cacheSolve <- function(x, ...) {
        matrix<-x$getInverse()
        if(!is.null(matrix)){
             message("getting cached data")
             return(x)
        }
        matrix2<-x$get()
        matrix<-solve(matrix2)
        x$setInverse(matrix)
        return(matrix)
}
