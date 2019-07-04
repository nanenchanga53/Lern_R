#https://sites.harding.edu/fmccown/r/ 모르겠을땐 사이트를 참조하자
#txt파일 읽어오기 파일경로 확인은 getwd() 파일경로 지정은 setwd("경로")
SampleData <- read.csv("cereal.csv", header = TRUE)
#print(str(SampleData))
#plot(SampleData) #이걸 그냥 출력하면 모든 점표시의 그래프 여러것이 표시되기 때문에 삼가자
#plot(SampleData$mfr) #plot은 기본적으로 x,y 좌표에 한개의 점을 여러개 찍는 그래프지만 Factor 형태는 막대그래프로 보여준다.
#plot(SampleData$sugars)
#plot(SampleData$sugars,SampleData$cups) #2개를 지정함으로서 x,y축을 설정할 수 있다.
#plot(log(SampleData$sugars),log(SampleData$cups)) #로그변환으로 정규분포로 변환하여 그래프를 다시 그림
#plot(SampleData$type,SampleData$mfr) #factor 2개를 하면 x좌표의 y좌표 범의를 그린다.
hist(SampleData$sugars,breaks = 5) #히스토그램으로 그린다 breaks는 벡터이면 벡터에 쓰여진 간격으로 숫자면막대의 간격으로 나눠서 그린다.
#barplot(SampleData$sugars, horiz=T) #x길이만 나타나는 막대그래프 horiz는 가로로 할지 여부
#boxplot(SampleData$sugars) #박스형태 그래프이다 중간값을 비교할때 사용한다.
#pairs() #산점도 행렬을 그린다(찍힌 점이 많을때 사용하자)
#pie() #원형 그래프를 그린다

