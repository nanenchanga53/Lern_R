# 작업했던 R의 내용 데이터들을 따로 저장하기 위하여 사용한다.
# https://datacookbook.kr/50 참조
set.seed(45)
my.data<-data.frame(x=rnorm(10),y=rnorm(10),z=rnorm(10))
save(my.data,file="Hight_Level/Chapter6_WritingDataToTextFiles/Exercise 6.4.Rdata")
rm(my.data)
load("Hight_Level/Chapter6_WritingDataToTextFiles/Exercise 6.4.Rdata")
print(my.data)

write.table(mtcars,file = "mtcars.txt",sep = ",")
