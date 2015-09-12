###############################################################################################
## is palindrome ##############################################################################
###############################################################################################
## palindrome: abcs22scba, acasaca, etc.
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