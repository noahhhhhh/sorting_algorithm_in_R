###############################################################################################
## sum of pair equal to a number ##############################################################
###############################################################################################
## find all pairs in array of integers whose sum is equal to given number
PairEqualToNum <- function(array, num){
    pairs <- as.numeric()
    count <- 0
    for (i in 1:length(array)){
        for (j in 1:length(array)){
            if (array[i] + array[j] == num & i != j){
                if (length(pairs) >= 2){
                    for (k in 1:(length(pairs) - 1)){
                        if (sum(c(array[i], array[j]) == c(pairs[k], pairs[k + 1])) == 2){
                            count <- count + 1
                        }
                    }
                    if (count == 0){
                        pairs <- c(pairs, c(array[i], array[j]))
                    }
                    count <- 0
                } else {
                    pairs <- c(array[i], array[j])
                }
            }
        }
    }
    return(pairs)
}