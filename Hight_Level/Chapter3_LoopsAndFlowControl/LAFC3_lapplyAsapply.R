# Create a data frame with 10 rows and 100.000 columns, and fill it with random numbers generated with rnorm(). 
# We want to calculate the mean of all 100.000 columns, and place it in a vector.

k1<-10
k2<-100000
my.data<-as.data.frame(matrix(rnorm(k1*k2),nrow=k1))
mean1<-numeric(k2)
mean2<-numeric(k2)

# Calculate the runtime factor from looping over the 100.000 columns and using the mean function, in contrast to using sapply().

for(i in 1:k2){
  mean1[i]<-mean(my.data[,i])
}
#Thus, the code to perform the runtime factor calculation could be:

time1<-as.numeric(Sys.time())
for(i in 1:k2){
  mean1[i]<-mean(my.data[,i])
}
time2<-as.numeric(Sys.time())
time3<-as.numeric(Sys.time())
mean2<-sapply(my.data,mean)

time4<-as.numeric(Sys.time())
print((time2-time1)/(time4-time3))

# lapply(값,적용할함수,) : 벡터,리스트,표현식,데이터프레임 등에 함수를 적용하고 그 결과를 리스트로 반환한다
# (result <- lapply(1:3, function(x) { x*2 }))
# 리스트로 반환

# sapply(값,적용할함수,) : 벡터, 리스트, 표현식, 데이터 프레임 등에 함수를 적용하고 그 결과를 벡터 또는 행렬로 반환한다.
# x <- sapply(iris[, 1:4], mean)
# 벡터나 행렬로 반환