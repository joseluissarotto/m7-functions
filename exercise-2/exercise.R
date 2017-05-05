# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(a,b){
  return(paste("The difference in lengths is ",length(a)-length(b)))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(seq(1:10),c(23,31,20))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b){
    t <- ""
  if (length(a)>length(b)){
    t <- paste("Your first vector is longer by",length(a)-length(b),"elements",sep=" ")
  }
  if (length(a)<length(b)){
    t <- paste("Your second vector is longer by",length(b)-length(a),"elements",sep=" ") 
  }
  return(t)  
}

# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(seq(1:10),seq(11:30)))



### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference2 <- function(a,b){
  t <- ""
  if (length(a)>length(b)){
    t <- paste("Your",names(a)[1],  "vector is longer by",length(a)-length(b),"elements",sep=" ")
  }
  if (length(a<length(b))){
    t <- paste("Your",names(b)[1], "vector is longer by",length(b)-length(a),"elements",sep=" ") 
  }
  return(t)  
}
v1 <- seq(1:10)
names(v1) <- "v1"
v2 <- seq(11:30)
names(v2) <- "v2"
print(DescribeDifference2(v1,v2))
