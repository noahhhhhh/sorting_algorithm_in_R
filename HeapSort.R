###############################################################################################
## heap sort ##################################################################################
###############################################################################################
## store the array as a heap, extract the first item from heap and put it in a sorted list
## key1: MaxiHeapify compares a node and its two leaves, and if the node is not the largest, 
## it recursively compare its leaves' leaves
## key2: BuildMaxHeap always starts from the bottom last node-and-leaves part, to the top
## key3: HeapSort only needs to build a heap once, after removing the top node, it only need to
## use MaxiHeapify to compare the top node-and-leaves part to decide what is the max item
## key4: HeapSort iterates len times
MaxHeapify <- function(items, i){
    len <- length(items)
    left <- i * 2
    right <- i * 2 + 1
    largest <- 0
    if (left <= len & items[i] < items[left]){
        largest <- left
    } else {
        largest <- i
    }
    if (right <= len & items[largest] < items[right]){
        largest <- right
    }
    
    if (largest != i){
        temp <- items[largest]
        items[largest] <- items[i]
        items[i] <- temp
        items <- MaxHeapify(items, largest)
    }
    return(items)
}

BuildMaxHeap <- function(items){
    len <- length(items)
    for (i in floor(len / 2):1){
        items <- MaxHeapify(items, i)
    }
    return(items)
}

HeapSort <- function(items){
    len <- length(items)
    items <- BuildMaxHeap(items)
    output <- as.numeric()
    while (len > 0){
        output <- c(items[1], output)
        len <- len - 1
        if (len == 1){
            items <- MaxHeapify(items[-1], 1)
        } else {
            items <- MaxHeapify(items[-1], 1)
        }
    }
    return(output)
}

