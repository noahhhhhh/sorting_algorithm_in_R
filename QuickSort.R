###############################################################################################
## quick sort #################################################################################
###############################################################################################
# Pick an element, called a pivot, from the array.
# Reorder the array so that all elements with values less than the pivot come before the pivot, while all elements with values greater than the pivot come after it (equal values can go either way). After this partitioning, the pivot is in its final position. This is called the partition operation.
# Recursively apply the above steps to the sub-array of elements with smaller values and separately to the sub-array of elements with greater values.
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
