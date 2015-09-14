###############################################################################################
## find the prime factor of a number ##########################################################
###############################################################################################
PrimeFactor <- function(num){
    if (num > 1){
        output <- as.numeric()
        for (i in 2:num){
            if (num %% i == 0){
                output <- c(output, i)
                num <- num / i
            }
        }
        return(output)
    } else {
        return(F)
    }
}