# Then assign the dataset data.exercise.3.1 to my.data. 

# Now, write a loop that investigates the contents of my.data. For each row starting from the first, the loop should write a line in the output window depending on the contents of the ith row of my.data:



# If the line "Too many negative values" have been written, the loop should stop writing out lines immediately, otherwise it should stop when the last line of my.data have been investigated and a line has been written.

set.seed(1786)
data.exercise.3.1<-exp(matrix(rnorm(2000),nrow=100))
index1.temp<-sample(1:100,10)
index2.temp<-sample(1:20,10)
for(i in 1:10){
  data.exercise.3.1[index1.temp[i],index2.temp[i]]<--1
}
my.data <- data.exercise.3.1

count.negatives<-0
for(i in 1:length(my.data[,1])){
# If the ith row of my.data do not contain any negative values, the line should contain the sentence: "The mean of row number i is", where i should be the row number, and then the mean of the ith row of my.data.
    negative<-(min(my.data[i,])<0)
    count.negatives<-count.negatives + negative

    if(count.negatives<=3 & !negative){
    cat("The mean of row",i,"is",mean(my.data[i,]),"\n")
    }

# If the ith row contains negative values, but no more than 3 lines with negative numbers have been encountered, the line should contain the sentence "<Row i contains negative values>", where again i is the row number.
    if(count.negatives<=3 & negative){
        cat("<Row",i,"contains negative values>\n")
    }

# If the ith row contains negative values, and at least 3 lines with negative numbers have been encountered, the line should contain the sentence "Too many negative values". if(count.negatives>3){  
    if(count.negatives>3){  
        cat("Too many negative values\n")
        break
    }
}