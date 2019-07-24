#read.table()
#header = FALSE : 첫째 행이 열의 이름인지
#sep = "" : 열들을 구분하는 문자
#dec : 어떤 문자가 소수점을 구분하는지(엑셀에서 점(.) 이 아닌 쉼표(,)로 사용되는 경우가 있다)
#nrows : 몇개의 행을 읽어들이고 싶은지 기본 전부
#na.strings : 어던 문자열이 결측값을 나타내는지 즉 R 에서는 NA NaN 이지만 -999 같은 걸로 했을경우
#skip : 몇개의 행을 건너뛰고서 읽기를 시작해야 하는지
#comment.char 어떤문자가 줄의 시작에 있을 때 그 줄을 건너띄어야 하는지 즉 주석제거


my.data.frame<-read.table("Hight_Level/Chapter5_ReadingInData/data.exercise5.2.dat",skip=2, header=TRUE,sep=";",dec=",")
print(my.data.frame)