# 덤프는 R 객체들을 저장할때 함수같은거 만들어서 클래스를 만든다고 생각하자
# 즉 랜덤으로 생성했어도 같은 값을 갖는다
# https://knight76.tistory.com/entry/R-%EA%B0%9D%EC%B2%B4-%EC%A0%80%EC%9E%A5-%ED%85%8D%EC%8A%A4%ED%8A%B8-dgetdput-dumpsource-vs-%EB%B0%94%EC%9D%B4%EB%84%88%EB%A6%AC-saveload 를 참조하자

my.data<-data.frame(a=LETTERS[1:5],b=1:5)
write.table(my.data,file="Hight_Level/Chapter6_WritingDataToTextFiles/Exercise 6.3a.txt", sep=";",row.names=FALSE)
my.text<-"TITLE extra line\n2 3 5 7\n11 13 17 \nOne more line"
writeLines(my.text,con="Hight_Level/Chapter6_WritingDataToTextFiles/Exercise 6.3b.txt")