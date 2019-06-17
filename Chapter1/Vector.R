
#c() 는 벡터를 만드는 함수이다(리스트랑은 좀 다르다 한다)
c("hearts", "spades", "diamonds", "diamonds", "spades")

drawn_suits <- c("hearts", "spades", "diamonds",
 "diamonds", "spades")

print(drawn_suits)

print(is.vector(drawn_suits)) 

#names() <-  이런식으로 값마다 이름을 부여할 수 있다  remain <- c(spades = 11, hearts = 12, diamonds = 11, clubs = 13) 이거랑 같은 거다
#그래소 이름값으로도 불러올 수 있다 remain["spades"]
remain <- c(11, 12, 11, 13)
suits <- c("spades", "hearts", "diamonds", "clubs")
names(remain) <- suits
print(remain)
#tr(객체) : 데이터 구조, 변수 개수, 변수 명, 관찰치 개수, 관찰치의 미리보기
print(str(remain))

#참고로 하나의 값을 가진 것 하나도 벡터다
my_apples <- 5
print(is.vector(my_apples))

#원자 벡터는 동일한 유형의 요소만 포함할 수 있는 반면, 목록에는 다른 유형의 요소가 포함될 수 있다.
#R은 원자 벡터에 대해 자동으로 영역 할당을 수행한다.