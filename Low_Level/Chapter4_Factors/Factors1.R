#범주형 변수(유한한 숫자의 범주에만 속하는 값들) 인자(factor)로 저장하여 범주를 만든다.

blood <- c("B", "AB", "O", "A", "O", "O", "A", "B")
print(blood)
#factor()로 중복되는 값을 없앤 값(범주)만 출력
blood_factor <- factor(blood)
print(blood_factor)
str(blood_factor)
#factor로 나눠진 이름을 다시 설정
levels(blood_factor) <- c("BT_A", "BT_AB", "BT_B", "BT_O")
print(blood_factor)
#아래형식으로 바로 보여주기만 할 수 있다.
print(factor(blood, labels = c("BT_A", "BT_AB", "BT_B", "BT_O")))

#아래 방법으로 다시 넣어보자
rm(blood)
rm(blood_factor)
blood <- c("B", "AB", "O", "A", "O", "O", "A", "B") 
blood_factor <- factor(blood)
blood_tri <- factor(blood,
 levels = c("O", "A", "B", "AB"),
 labels = c("BT_O", "BT_A", "BT_B", "BT_AB")) #levels 안에는 factor 로 나온 값하고 같아야한다 원래값들을 labels로 값을 변경하는 것이기 때문이다.
print(blood_tri)

#참고로 범례만 갖는거지 개수를 세는게 아니라서 < 같은 비교를 할 수 없다. 그래서 아래방법을 사용한다.
tshirt <- c("M", "L", "S", "S", "L", "M", "L", "M")
tshirt_factor <- factor(tshirt, ordered = TRUE,
 levels = c("S", "M", "L"))
 print(tshirt_factor)
 print(tshirt_factor[1] < tshirt_factor[2] )