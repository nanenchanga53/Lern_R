# 외부파일 저장은 https://rfriend.tistory.com/17 참조
set.seed(45)
my.data<-data.frame(x=rnorm(10),y=rnorm(10),z=rnorm(10))
print(my.data)
write.csv2(my.data,"Hight_Level/Chapter6_WritingDataToTextFiles/Exercise 6.2.csv")