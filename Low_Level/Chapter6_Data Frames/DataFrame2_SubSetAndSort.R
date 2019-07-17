#프레임 서브셋과 정렬에 관한거다.
name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
people <- data.frame(name, age, child, stringsAsFactors = FALSE)
print(people)
print("-----------------------")
#기본적으로는 매열과 비슷하다
print(people[3,2])
print(people[3,"age"])
print(people[3,])
print(people[,"age"])
print(people[c(3, 5), c("age", "child")])
print("-----------------------")
#아래부터는 리스트형식
print(people$age)
print(people[["age"]])
print(people[[2]])
print("-----------------------")
#아래는 열 추가 방법
height <- c(163, 177, 163, 162, 157)
people$height <- height #people[["height"]] <- height
print(people)
weight <- c(74, 63, 68, 55, 56)
print(cbind(people, weight));
print("-----------------------")
#아래는 행 추가 방법
tom <- data.frame("Tom", 37, FALSE, 183)
#rbind(people, tom) 이건 에러가 난다(순서대로 프레임을 만들어 넣는다고 해도 이름을 찾아서 넣을 수 없다는 에러가 뜬다)
tom <-- data.frame(name = "Tom", age = 37, child = FALSE, height = 183)
print(rbind(people,tom))
print("-----------------------")
#아래는 행 삭제방법
print(people[-1,])
print("-----------------------")
#아래는 정렬방법
print(sort(people$age)) #값의 오름차순 정렬 
ranks <- order(people$age) #순서 오름차순 정렬으로 따져서 3번째 1번째 2번째 5번째 4번째 위치에 값들이 포진해 있다   
print(ranks)
print(people[ranks, ]) #이로서 정렬순서리스트를 이용해서 정렬된것을 보여줄 수 있다는 것을 알 수 있다.
people[order(people$age, decreasing = TRUE), ] #이걸로 내림차순으로 정렬할 수 있다.