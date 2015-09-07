###############################################################################################
## insertion sort #############################################################################
###############################################################################################
## Insertion sort iterates, consuming one input element each repetition, 
## and growing a sorted output list. Each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there. It repeats until no input elements remain.
## stable sort
InsertionSort <- function(items){
    len <- length(items)
    for (i in 2:len){
        j <- i
        print(paste("--------i: ", i))
        while (j >= 2){
            print(paste("j: ", j))
            if (items[j - 1] > items[j]){
                temp <- items[j - 1]
                items[j - 1] <- items[j]
                items[j] <- temp
            }
            j <- j - 1
        }
    }
    return(items)
}