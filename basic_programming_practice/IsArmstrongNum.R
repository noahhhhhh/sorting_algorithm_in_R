###############################################################################################
## is armstrong number ########################################################################
###############################################################################################
## armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits
## e.g. 3^3 + 7^3 + 1^3 = 371
IsArmstrongNum <- function(num){
    len <- nchar(num)
    addNum <- 0
    for (i in len:1){
        subNum <- substr(num, i, i)
        addNum <- addNum + as.numeric(subNum)^len
    }
    if (addNum == num){
        return(T)
    } else {
        return(F)
    }
}