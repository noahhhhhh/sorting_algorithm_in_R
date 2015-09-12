###############################################################################################
## longest palindrome #########################################################################
###############################################################################################
## find the longest palindrome within a string
IsPalindrome <- function(string){
    len <- nchar(string)
    count <- 0
    isOdd <- 
        for (i in 1:floor(len/2)){
            if(substr(string, i, i) != substr(string, len - i + 1, len - i + 1)){
                count <- count + 1
                return(F)
            }
        }
    if (count == 0){
        return(T)
    }
}

LongestPalind <- function(string){
    vecPalindrome <- ""
    for (i in 1:len){
        for (j in i:len){
            subString <- substr(string, i, j)
            if (IsPalindrome(subString) == T & nchar(subString) > 1){
                if (nchar(vecPalindrome) <= nchar(subString)){
                    vecPalindrome <- subString
                }
            }
        }
    }
    return(vecPalindrome)
}