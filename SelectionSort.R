###############################################################################################
## selection sort #############################################################################
###############################################################################################
## go through the array and get the maximum item, and put it in the last position in a sorted list
## remove that maximum item and redo as above
## key1: interatively compare indMin with all item, if item > items[indMin], change the indMin to
## the index of that item
## key2: move item[indMin] from items to the output list, and redo
SelectionSort <- function(items){
    len <- length(items)
    for (i in 1:(len - 1)){
        indMin <- i
        for (j in (i + 1):len){
            if (items[indMin] > items[j]){
                indMin <- j
            }
        }
        temp <- items[i]
        items[i] <- items[indMin]
        items[indMin] <- temp
    }
    return(items)
}