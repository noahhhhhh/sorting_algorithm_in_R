###############################################################################################
## missing number #############################################################################
###############################################################################################
## In an array 1-100 numbers are stored, one number is missing how do you find it
MissingNum <- function(array, from = 1, to = 100){
    count <- 0
    missing <- as.numeric()
    for (i in from:to){
        for (j in 1:length(array)){
            if (i == j){
                count <- count + 1
            }
        }
        if (count == 0){
            missing <- c(missing, i)
        }
        count <- 0
    }
    return(missing)
}