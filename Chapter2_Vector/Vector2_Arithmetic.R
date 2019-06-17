#벡터의 기본적인 산수다
earnings <- c(50, 100, 30)
expenses <- c(30, 40, 80)

#다른 언어에서 처럼 사칙연산과 True Fasle 가 벡터 단위로도 가능하다
print(earnings - expenses)
print(earnings + c(10, 20, 30))
print(earnings * c(1, 2, 3))
print(earnings / c(1, 2, 3))
#참고로 비교연산은 각 벡터의 위치마다 따로 검사한다. 길이를 검사하는게 아니다
print(earnings > expenses)