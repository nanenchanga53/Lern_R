#부분 집합에 대한 거다 배열을 이해하는게 빠르다
remain <- c(spades = 11, hearts = 12, diamonds = 11, clubs = 13)
print(remain[3])
#아래와 같이 부분적으로 집합을 빼와서 넣을 수 있다 아래건 remain[1] 과 remain[4] 가 부분집합으로 넣어지게 된다
remain_black <- remain[c(1, 4)]
print(remain_black)
#이것도 이름으로 불러올 수 있다.
remain_red <- remain[c("hearts","diamonds")]
print(remain_red)
#-1 이나 -c() 형태로 인덱스(주소)에서 제외하고 다른 것을 반환할 수 있다.
print(remain[-1])
print(remain[-2])
print(remain[-c(1,2)])
#TRUE FALSE 로 가져올지 말지 정할 수 있다. 참고로 남은건 자동으로 반복해서 가져온다 즉 6개 중 c(T,F,F) 했다면 c(T,F,F,T,F,F) 나 마찬가지다
print(remain[c(FALSE, TRUE, FALSE, TRUE)] )
selection_vector <- c(TRUE, TRUE, FALSE)
print(remain[selection_vector]) 