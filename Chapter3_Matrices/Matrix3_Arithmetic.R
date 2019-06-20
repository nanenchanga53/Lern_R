#행렬의 산술에 관한 것이다.
#colSums(배열) 은 각행 값을 전부 합한값을 벡터로 반환, rowSums(배열)은 각 열 값
the_fellowship <- c(316, 556) 
two_towers <- c(343, 584) 
return_king <- c(378, 742)
lotr_matrix <- rbind(the_fellowship, two_towers, return_king)
colnames(lotr_matrix) <- c("US", "non-US") 
rownames(lotr_matrix) <- c("Fellowship", "Two Towers", "Return King")

#기본적으로 배열에 연산을 하면 모든 값들이 영향을 받는다.
print(lotr_matrix)
print(lotr_matrix / 1.12)
print(lotr_matrix - 50)
#하나의 백터를 계산하면 각각의 행에 맞는 벡터에 대응대는 값과 계산한다
print(lotr_matrix - c(50,80,100))

rates <- matrix(c(1.11,0.99,0.82), nrow = 3, ncol = 2)
print(lotr_matrix * rates)
print(rowSums(lotr_matrix))