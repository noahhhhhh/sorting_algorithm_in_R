###############################################################################################
## merge sort #################################################################################
###############################################################################################

items <- sample(1:10, 5, replace = T)
items
MergeSort <- function(items){
    len <- length(items)
    if (len > 1){
        sep <- ceiling(len/2)
        left <- items[1:sep]
        right <- items[(sep + 1):len]
        
        lenLeft <- length(len)
        lenRight <- length(right)
        
        MergeSort(left)
        MergeSort(right)
        
        newItems <- numeric(lenLeft + lenRight)
        lenNewItems <- lenLeft + lenRight
        i_left <- 1
        i_right <- 1
        i <- 1
        for (i in 1:lenNewItems){
            if ((left[i_left] < right[i_right] & i_left <= lenLeft) | i_right > lenRight){
                newItems[i] <- left[i_left]
                i_left <- i_left + 1
            } else if ((left[i_left] >= right[i_right] & i_right <= lenRight) | i_left > lenLeft){
                newItems[i] <- right[i_right]
                i_right <- i_right + 1
            }
        }
        return(newItems)
    } else {
        return(items)
    }
}

MergeSort(items)