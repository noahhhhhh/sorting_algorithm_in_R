###############################################################################################
## occurance of a character ###################################################################
###############################################################################################
## count occurrence of a given character in a string
OccurChar <- function(string, char){
    vecString <- unlist(strsplit(string, split = ""))
    count <- 0
    for (item in vecString){
        if (item == char){
            count <- count + 1
        }
    }
    return(count)
}