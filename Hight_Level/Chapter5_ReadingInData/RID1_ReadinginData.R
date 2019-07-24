#Reading in Data R
#https://sites.harding.edu/fmccown/r/ 모르겠을땐 사이트를 참조하자
#txt파일 읽어오기 파일경로 확인은 getwd() 파일경로 지정은 setwd("경로")
my.data.frame<-read.table("Hight_Level/Chapter5_ReadingInData/data.exercise5.1.dat",skip=1, header=T)
print(my.data.frame)