Pyramid1 <- function(n){
    for (i in 1:n){
        printer <- c(rep(" ", n - i + 1), rep("*", i * 2 - 1), rep(" ", n - i + 1))
        print (printer)
    }
}

GenPrint <- function(char, rep){
    output <- as.character()
    if (rep >= 1){
        for (i in 1:rep){
            output <- paste(output, char, sep = "")
        }
    } else if (rep == 1) {
        output <- char
    }
    
    return (output)
}
Pyramid2 <- function(n){
    for (i in 1:n){
        printSpace <- GenPrint(" ", (n - i))
        printStar <- GenPrint("* ", i)
        print (paste(printSpace, printStar, sep = ""))
    }
}