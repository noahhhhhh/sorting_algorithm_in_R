###############################################################################################
## bubble sort ################################################################################
###############################################################################################
## compares each pair of adjacent items and swaps them if they are in the wrong order
## stable sort
BubbleSort <- function(items){
    len <- length(items)
    for (i in 1:len){
        print(paste("--------i: ", i))
        if ((len - i) >= 1){
            for (j in 1:(len - i)){
                print(paste("j: ", j))
                if (items[j] > items[j + 1]){
                    temp <- items[j]
                    items[j] <- items[j + 1]
                    items[j + 1] <- temp
                }
            }
        }
    }
    return(items)
}