#write.table()
#자료를 출력해서 파일로 만들자
set.seed(9007)
my.data<-data.frame(x=rnorm(10),y=rnorm(10)+5,z=rchisq(10,1))
additional.data<-data.frame(x=rnorm(3),y=rnorm(3)+5,z=rchisq(3,1))
print(my.data)
print(additional.data)
write.table(my.data,"Hight_Level/Chapter6_WritingDataToTextFiles/Exercise 6.1.txt",row.names=FALSE,col.names=FALSE) #새로만들기
write.table(additional.data,"Hight_Level/Chapter6_WritingDataToTextFiles/Exercise 6.1.txt",row.names=FALSE,col.names=FALSE,append=T) #기존거에서 추가