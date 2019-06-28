#데이터 프레임(셋)에 대한 연습이다.
#리스트와 비슷한데 SQL의 뷰와 비슷해 보인다.
#CSV형태로 결과가 나타나게 된다.
name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
#중복되는 값이 많으면 factor형태로 들어갈 수 있는걸 항상생각해서 stringsASFactors = FALSE 같은걸 사용해서 넣자
df <- data.frame(name, age, child,stringsASFactors = FALSE) #속성의 이름은 자동으로 변수명으로 각각열이 프레임형태로 더해진다.(CSV나 텍스트 파일 등을 불러오면)
names(df) <- c("Name", "Age", "Child") #당연히 속성 이름은 names로 바꿀 수 있다. 
#df <- data.frame(Name = name, Age = age, Child = child)  이렇게도 가능하다
print(df)
print(dim(df)) #행열개수는 dim()을 쓰자

#참고로 행의 개수는 같아야한다.

#너무 많아 일정 수가 넘으면 보여주지 않는다.
#head(데이터프레임,n=숫자) 데이터 프레임에서 n개의 숫자만큼 앞의 자료를 보여준다.
#tail(데이터프레임,n=숫자) 데이터 프레임에서 n개의 숫자만큼 뒤의 자료를 보여준다.

