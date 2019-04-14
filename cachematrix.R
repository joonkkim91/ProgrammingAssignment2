## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
        
        ##initiating inverse property
        I<- NULL

        ##setting the matrix x
        set <- function(m){
                x<<-m
                I<<-NULL
                }

        #getting the matrix
        get <- function(){
                x
                }

        #set the inverse matrix of x
        setInv <- function(i){
                I<<- i
                }

        #getting the inverse matrix of x
        getInv <-funtion(){
                I
                }

        ##list if internal methods
        list(set=set, get = get, setInv = setINv, getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        ##Inversion Matrix(IM) of the matrix x
        IM <- x$getInv()
        
        #calculaation
        if(is.null(IM)){
                message('Calculation the inverse...')
                
                data <- x$get()
                IM <- solve(data,...)
                x$setInv(IM)
                }
        else {
                message('Cached inverse...')
                }
        IM
}               

}
