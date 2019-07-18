#벡터
A <- c(10,2,3,4)
#array
B <- array(c(1:24), dim=c(4,3,2))
#factor
C <- as.factor(c(rep("male",10),rep("female",10)))
#dataframe
D <- as.data.frame(B)
#list
E <- list(title = "R you on time?", duration = 230)

#paste() : 문자열 합치기 https://m.blog.naver.com/coder1252/220985161855 참조

#함수만들기
power <- function(x,pow){
    return(x^pow)
}
print(power(2,3))
print(power(2:4,3)) #벡터로 입력하면 출력도 벡터

#숫자의 벡터를 취하여 표준화 값을 반환하는 함수, 즉, 분산이 1이 되도록 평균 감산 및 축소된 데이터를 만든다
my.standard<-function(x){
    (x-mean(x))/sd(x)
}
set.seed(10)
print(my.standard(rnorm(10)))
print(var(rnorm(10)))

#2.3 실습
f <- function(x){
    3*sin(x/2)+x
}
print(f(0))
print(f(1))
print(f(pi))
curve(f,-7,7)

#Lab
my.display<-function(x){
    cat("Summary of input: \n") #출력후 행을 따로 바꾸지 않는 출력
    return(summary(x))
}
print(my.display(1))

set.seed(1234)
my.data<-rnorm(200)
print(median(my.data))
