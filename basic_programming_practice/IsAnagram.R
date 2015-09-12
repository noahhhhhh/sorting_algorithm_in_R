###############################################################################################
## is anagram #################################################################################
###############################################################################################
IsAnagram <- function(string1, string2){
    if (nchar(string1) == nchar(string2)){
        vecString1 <- unlist(strsplit(string1, split = ""))
        vecString2 <- unlist(strsplit(string2, split = ""))
        vecString1 <- sort(vecString1)
        vecString2 <- sort(vecString2)
        if (sum(vecString1 == vecString2) == nchar(string1)){
            return(T)
        } else {
            return(F)
        }
    } else {
        return(F)
    }
}