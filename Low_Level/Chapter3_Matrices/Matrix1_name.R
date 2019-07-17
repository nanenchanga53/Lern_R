#배열이다 배열[1,2] 이런식으로 각 항목을 가져올 수 있다. 그냥 2차원이다
#matrix(숫자, 행의수 ncol =  혹은 bycol = TRUE 로 자동으로 채워지개, nrow 열의수  혹은 byrow로 자동으로 채워지게)

print(matrix(1:6, nrow = 2))
print(matrix(1:6, nrow = 2, byrow = TRUE))

#아래같이 숫자가 부족하게 실행하면 일단 1부터 자동으로 채워지고 자동으로 채운 부분을 WARING안내가 뜨게 된다.
#print(matrix(1:4, nrow = 2, ncol = 3))

m <- matrix(1:6, byrow = TRUE, nrow = 2)
#cbind( ,,,)  각 숫자 들의 범위를 열에 순서대로 만듬 기존것에 추가하는 것에 가까움
print(cbind(1:3, 1:3))
print(rbind(m, 7:9))
#rbind(,,,) 각 숫자들의 범위를 행에 순서대로 만듬 기존것에 추가하는 것에 가까움
print(rbind(1:3, 1:3))
print(cbind(m, 10:11)) #cbind(m, c(10, 11)) 로 벡터도 가능

#rownames() <- 벡터 colnames() <- 벡터로 각 행렬의 이름울 추가할 수 있다.
m2 <- matrix(1:6, byrow = TRUE, nrow = 2) 
rownames(m2) <- c("row1", "row2")
colnames(m2) <- c("col1", "col2", "col3")
print(m2)

#야에 선언할때 리스트의 형태로 행렬의 이름을 넣을 수 있다.
 m3 <- matrix(1:6, byrow = TRUE, nrow = 2, dimnames = list(c("row1", "row2"), c("col1", "col2", "col3")))

#글자도 자동으로 채울 수 있다 LETTERS[1:12]
char <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
print(char)

#이것도 숫자와 문자를 합치면 자동으로 문자가 된다.
num <- matrix(1:8, ncol = 2) 
char <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
print(cbind(num, char)) 

#행렬은 2차원
#R의 행렬을 채우기 위해 너무 짧은 데이터 시퀀스를 사용할 경우 어떻게 되는가? R은 행렬 열을 열별로 채우고 데이터 시퀀스를 반복한다.
#