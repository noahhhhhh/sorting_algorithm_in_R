###############################################################################################
## is power of n ##############################################################################
###############################################################################################
## check whether a no is power of two or not, or N
IsPowerOf2 <- function(num){
    if (num == 0){
        return(T)
    } else {
        square <- 1
        while(square <= num){
            if(square == num & num != 2){
                return(T)
            }
            square <- square*2
        }
        return(F)
    }
}