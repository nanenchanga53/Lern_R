#Index and Logical Index
# You have the following matrix:

x<-matrix(1:12,4)
# Now, select several elements from the matrix using the following command:

print(x[cbind(c(1,3,2),c(3,3,2))])      #first selection  열의 옆으로 추가
# What about using the following code instead? What is the difference?
# 값 하나씩 3개 [1][3] , [3][3], [2][2]
print(x[c(1,3,2),c(3,3,2)])             #second selection
# 또다른 조합된 행렬 {[1][3],[1][3],[1][2]} ...

