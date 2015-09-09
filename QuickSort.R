###############################################################################################
## quick sort #################################################################################
###############################################################################################
QuickSort <- function(items){
    len <- length(items)
    if (len > 1){
        pivotIndex <- ceiling(len/2)
        smallerItems <- as.numeric()
        largerItems <- as.numeric()
        
        for (i in 1:len){
            if (i != pivotIndex){
                if (items[i] < items[pivotIndex]){
                    smallerItems <- c(smallerItems, items[i])
                } else {
                    largerItems <- c(largerItems, items[i])
                }
            }
        }
        
        smallerItems <- QuickSort(smallerItems)
        largerItems <- QuickSort(largerItems)
        
        items <- c(smallerItems, items[pivotIndex], largerItems)
        items
    } else {
        items
    }
}

items <- sample(10, 10, replace = T)
items
QuickSort(items)
