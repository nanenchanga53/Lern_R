#Variants of read.table()
#엑셀파일을 csv로 저장해줘야한다

my.data.frame<-read.csv("Hight_Level/Chapter5_ReadingInData/Exercise 5.3.csv",na.strings="",skip=2,header=TRUE)[,-1] #시트가 2개 그중 첫번째 그래프 시트를 무시
print(my.data.frame)