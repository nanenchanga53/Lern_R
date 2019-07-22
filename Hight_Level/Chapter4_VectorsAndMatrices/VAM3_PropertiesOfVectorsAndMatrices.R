#Properties of Vectors and Matrices
#https://youtu.be/m9Ii_hfXm9k 참조
#식이 시그마 수식이 있어 적어넣기가 뭐하다
row<-matrix(rep(1:100,100),nrow=100)
column<-matrix(rep(1:100,100),nrow=100,byrow=T)
A<-3*column^3/(1+row*column)

#a:
print(sum(A))

#b:
print(sum(A[row<=column]))