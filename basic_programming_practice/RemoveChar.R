###############################################################################################
## remove character ###########################################################################
###############################################################################################
## remove any given character from a String
RemoveChar <- function(string, char){
    vecString <- unlist(strsplit(string,""))
    output <- as.character()
    for (item in vecString){
        if (item != char){
            output <- paste(output, item)
        }
    }
    return(gsub("\\s+", "", output))
}
