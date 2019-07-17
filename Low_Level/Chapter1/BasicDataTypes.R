#TRUE FALSE NA 는 대문자로 써야하고 class(TRUE) 하면 어떤 형태인지 알 수 있다
print(class(TRUE))
print(class(FALSE))
#NA는 알려하지 말자
print(class(NA))

#숫자는 numeric 형이고(소수포함) is.numeric으로 숫자형인자 판별
#R에는 배정밀도 숫자형, 복소수형 및 원시바이트를 저장하는 원시형을 잘 인지시켜야 한다(숫자가 커지고 문자형테를 싸게 저장하려문)
print(is.numeric(2))

#Character 형 : 뭐 이건 문자형이다
print(class('안녕'))

#as.numeric(TRUE) 이건 형식 변환이다 as. 이후에 변환하고 싶은 걸 넣어서 변환하는 함수들이다.
x <- as.numeric(TRUE)
print(x)

y <- as.character(4)
print(y)

z <- as.numeric("4.5")
print(z)