###############################################################################################
## duplicate number ###########################################################################
###############################################################################################
## In an array 1-100 exactly one number is duplicate how do you find it
DuplicateNum <- function(array){
    count <- 0
    duplicates <- as.numeric()
    for (i in array){
        for (j in array){
            if (i == j){
                count <- count + 1
            }
        }
        if (count > 1){
            duplicates <- unique(c(duplicates, i))
        }
        count <- 0
    }
    return(duplicates)
}