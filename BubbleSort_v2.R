###############################################################################################
## bubble sort v2 #############################################################################
###############################################################################################
## buble sort 2, having a flag to break the loop when the list is already sorted
BubbleSort2 <- function(items){
    len <- length(items)
    flagSorted <- 0
    for (i in 1:len){
        if (len - i > 1){
            for (j in 1:(len - i)){
                if (items[j] > items[j + 1]){
                    flagSorted <- 1
                    temp <- items[j]
                    items[j] <- items[j + 1]
                    items[j + 1] <- temp
                }
            }
        } else {
            return(items)
        }
        if (flagSorted == 0){
            return(items)
        }
    }
    return (items)
}