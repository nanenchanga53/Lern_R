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
