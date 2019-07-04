#이제 그래프를 보기좋게 만들어보자
SampleData <- read.csv("cereal.csv", header = TRUE)
SampleData <- SampleData[order(SampleData$sugars),]
#첫번째부터 x값,y값,xlab : x축 이름,ylab : y축 이름,main : 그래프이름,  type : 그래프 종류 l 이면 선 o 이면 점과선, col : 색
#plot(SampleData$calories,SampleData$sugars,xlab = "칼로리",ylab="설탕양",main="칼로리와 설탕량비교",type="o",col = "Green")
#par()를 이용해 그래프의 모양을 조절하고 설정할 수 있음
#par(col = "blue")
#plot(SampleData$calories,SampleData$sugars)
#print(par()$col)
#col.main : 메인타이틀 색상, cex.axis : 축 눈금의 글꼴 크기를 비율로 곱해줌(기본보다 n배 즉 클수록 글자도 커진다), lty : 선의 형태(1 : 실선,2 : 점선, 3 : 더작은 점선 4 : *-, 5 : -, 6 : -*), pch : 포인트 마다 모양을 바꿔준다.
plot(SampleData$calories,SampleData$sugars,xlab = "칼로리",ylab="설탕양",main="칼로리와 설탕량비교",type="o",col = "Green", col.main = "darkgray", cex.axis = 0.6, lty = 6, pch = 2)
#sub : 부제목
#col 히스토그램에선 막대선채우기
#border 히스트그램에선 막대선경계