#배열에서 하나의 혹은 열이나 행의 값을 가져오는건 m[1,2] 이런식이다.


#숫자만이 아닌 벡터나 이름으로도 가능하다
m2 <- matrix(1:6, byrow = TRUE, nrow = 2) 
rownames(m2) <- c("row1", "row2")
colnames(m2) <- c("col1", "col2", "col3")
print(m2[2,])
print(m2[,2])
print(m2[2,c(1,2)])
print(m2["row1",2])