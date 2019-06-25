#Mean() 평균
#Median() 중앙값
#Mode() 최빈값
#min() 최솟값
#max() 최대값
#range() 범위
#var() 분산
#sd() 표준편차
#length()) 길이
#rank() 순위
#str(객체) : 데이터 구조, 변수 개수, 변수 명, 관찰치 개수, 관찰치의 미리보기
#summery() : 통계량 간략하게 보기 예 factor의 값들의 개수등
#head(), tail() : 상위 6개, 하위 6개 관측치 미리보기
#dim() : 데이터 객체의 차원
#class() : 데이터 객체 구성요소의 속성

#rep(값),횟수) 일정한 데이터 반복 rep("a",times = 10)
## "a"를 먼저 5번 반복하고, "1"을 10번 반복
print(rep(c("a", 1), c(5,10)))
 # repeat 1 at 10 times, 2 at 10 times, 3 at 10 times
print(rep(1:3, each=10))


#seq() 일정한 구조/순차 데이터 생성
 ## seq()를 이용한 1~10까지의 숫자를 2단위씩 증가시키면서 입력
print(seq( from = 1, to = 10, by=2 )) # from, to 는 제외해도 괜찮음
print(seq(from = 1, by = 2, length.out = 10)) # 10개 출력


#abs() 절대값
#sqrt() 제곱근
#ceiling(x) x값보다 크거나 같은 정수
#floor(x) x값보다 작거나 같은 정수
#trunc(x) x 소숫점 이하 버림
#round(x,digits=n) x를 소수점 n자리로 반올림
#log(x,base = n) x를 밑이 n인 log 취하기
#exp(x) x를 지수변환하기
#factorial(x) x의 팩토리얼



#cbind( ,,,)  각 숫자 들의 범위를 열에 순서대로 만듬 기존것에 추가하는 것에 가까움
print(cbind(1:3, 1:3))
#rbind(,,,) 각 숫자들의 범위를 행에 순서대로 만듬 기존것에 추가하는 것에 가까움
print(rbind(1:3, 1:3))
#colSums(배열) 배열의 열값의 합계를 벡터로 반환
#colMeans(배열) 배열의 열값의 평균을 벡터로 봔환
#rowSums(배열) 배열의 행값의 합계를 벡터로 반환 
#rowMeans(배열) 배열의 행값의 평균을 벡터로 반환

#factor()로 중복되는 값을 없앤 값(범주)만 출력
blood_factor <- factor(blood)
print(blood_factor)