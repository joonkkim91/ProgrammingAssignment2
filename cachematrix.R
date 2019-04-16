## Put comments here that give an overall description of what your
## functions do






## Write a short comment describing this function
##function to create objec to cache a matrix's inverse


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
##calculating the inverse matrix based on the function makeCacheMartix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        ##Inversion Matrix(IM) of the matrix x
        IM <- x$getInverse()
        
        #calculation
        if(!is.null(IM)){
                message("getting cached data..")
                return(IM)
        }
       
        #getting the matrix form the object
        data <- x$get()
        
        ##caclulating the inverse using matrix mutiplication
        IM <-solve(data)%*%data
        
        x$setInverse(IM)
        

        IM
}               

}
