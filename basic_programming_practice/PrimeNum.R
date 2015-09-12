###############################################################################################
## prime number ###############################################################################
###############################################################################################
## prime number: 1, 2, 3, 5, 7, 11, 13, etc.
PrimeNum <- function(from = 1, to = 100){
    if (from < 1 | to < from){
        print ("from cannot be less than 1, and from must be less than to")
    } else {
        for (i in from:to){
            count <- 0
            for (j in 1:i){
                if (i %% j == 0 && j != 1 && j != i){
                    count <- count + 1
                }
            }
            if (count == 0){
                print (i)
            }
            count <- 0
        }
    }
}
