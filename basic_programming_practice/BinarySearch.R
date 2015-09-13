###############################################################################################
## binary search ##############################################################################
###############################################################################################
FindIndex <- function(items, item){
    return(BinarySearch(items, item, 1, length(items)))
}
BinarySearch <- function(items, item, start, end){
    pivot_index <- floor((start + end) / 2)
    if (item < items[pivot_index]){
        pivot_index <- BinarySearch(items, item, 1, pivot_index)
    }
    if (item > items[pivot_index]){
        pivot_index <- BinarySearch(items, item, pivot_index + 1, end)
    }
    return(pivot_index)
}