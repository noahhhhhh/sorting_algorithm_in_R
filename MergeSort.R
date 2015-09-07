###############################################################################################
## merge sort #################################################################################
###############################################################################################

items <- c(18, 16, 8, 7, 6, 3, 11, 9, 15, 1, 1, 1)
items

MergeCompare <- function(left, right){
    lenLeft <- length(len)
    lenRight <- length(right)
    
    newItems <- numeric(lenLeft + lenRight)
    lenNewItems <- lenLeft + lenRight
    i_left <- 1
    i_right <- 1
    i <- 1
    for (i in 1:lenNewItems){
        if ((left[i_left] < right[i_right] && i_left <= lenLeft) || i_right > lenRight){
            newItems[i] <- left[i_left]
            i_left <- i_left + 1
        } else {
            newItems[i] <- right[i_right]
            i_right <- i_right + 1
        }
    }
    newItems
}
MergeSort <- function(items){
    len <- length(items)
    if (len > 1){
        sep <- ceiling(len/2)
        left <- items[1:sep]
        right <- items[(sep + 1):len]
        
        mLeft <- MergeSort(left)
        mRight <- MergeSort(right)
        
        MergeCompare(mLeft, mRight)
    } else {
        items
    }
}

MergeSort(items)