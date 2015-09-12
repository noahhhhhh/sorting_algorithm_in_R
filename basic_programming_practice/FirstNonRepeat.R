###############################################################################################
## first non repeat ###########################################################################
###############################################################################################
## first non repeated character of a given string
FirstNonRepeat <- function(string){
    vecString <- unlist(strsplit(string, split = ""))
    for (i in 1:(length(vecString) - 1)){
        if (vecString[i] != vecString[i + 1]){
            return(vecString[i + 1])
        }
    }
}