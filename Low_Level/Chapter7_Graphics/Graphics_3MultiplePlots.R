#그래프를 한 화면에 여래가 나타내고 싶다
SampleData <- read.csv("cereal.csv", header = TRUE)

#par(); R 빈 그래픽 디바이스(하나의 화면)이 나온다
# par(mfrow = c(2,2)) #mfcol 로 대체하면 열부터 생성한다
# plot(SampleData$calories,SampleData$sugars)
# plot(SampleData$calories,SampleData$fat)
# plot(SampleData$calories,SampleData$vitamins)
# plot(SampleData$calories,SampleData$protein)

# grid <- matrix(c(1, 1, 2, 3), nrow = 2, ncol = 2, byrow = TRUE) #레이아웃의 차지하는 비율을 만든다 1,1이 첫번째 그래프 2,3이 다른그래프들
# print(grid)

# layout(grid)
# plot(SampleData$calories,SampleData$sugars)
# plot(SampleData$calories,SampleData$fat)
# plot(SampleData$calories,SampleData$vitamins)

#아래는 파라매터 리셋 방법
# old_par <- par()
# par(col = "red")
# plot(SampleData$calories,SampleData$sugars)
# par(old_par)
# plot(SampleData$calories,SampleData$sugars) #이렇게하면 이전 설정으로 돌아온게 출력된다

plot(SampleData$calories, SampleData$sugars, pch = 16, col = 2, xlab="칼로리", ylab="설탕")
lm_samples <- lm(SampleData$sugars ~ SampleData$calories) #선형회귀를 계산
abline(coef(lm_samples), lwd = 2) #coef 회귀계수 출력 ,abline 직선그리기
lines(SampleData$calories, SampleData$sugars) #선들 그리기
#덤으로 order를 써가지고 하면 좀더 보기좋은 직선이 나온다
#text(x좌표,y좌표,텍스트) x,y 좌표에 텍스트를 표기