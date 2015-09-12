###############################################################################################
## second highest number ###########################################################################
###############################################################################################
## find second highest number in an integer array
SecondHighNum <- function(array){
    sortedArray <- sort(array, decreasing = T)
    count <- 0
    for (i in 1:(length(sortedArray) - 1)){
        if (sortedArray[i] != sortedArray[i + 1]){
            count <- count + 1
            return(sortedArray[i + 1])
        }
    }
    if (count == 0){
        return(array[1])
    }
}