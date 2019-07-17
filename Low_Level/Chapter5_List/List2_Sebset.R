#리스트에서 값들을 빼오는 방식을 배우자 []과 [[]]는 조금 다르니 잘 봐두자
similar_song <- list(title = "R you on time?", duration = 230)
song <- list(title = "Rsome times", duration = 190, track = 5, similar = similar_song)
print(song)
print(song[1]) #첫번째 이름과 값을 나타낸다
print(song[[1]]) #이름은 나타내지 않고 값만 나타낸다.
print(song[c(1,3)]) #첫번째 값과이름 세번째 값과 이름을 가져온다.
#참고로 song[[c(1,3)]] 이건 에러가 나는데 첫번째 값의 3번째 위치를 가져오라는 것과 같은 뜻을 가진다 즉 [[1]][[3]]
print(song[[4]][[1]]) #4번째 값이 리스트로 되어있어 다시 리스트의 서브셋 형식으로 부를 수 있는 것이다.
print(song[c(4,1)])

#이것도 지정된 이름으로 값을 받아올 수 있다.
print(song[["duration"]]) #값만
print(song["duration"]) #지정된 이름도 같이
print(song[c("duration","similar")]) #벡터로 2개 가져오기

#TRUE FALSE 로 가져오는 방법이다.
print(song[c(FALSE, TRUE, TRUE, FALSE)])
#song[[c(FALSE, TRUE, TRUE, FALSE)]] 나 song[[F]][[T]][[T]][[F]]  는 에러가난다
#아래와 같이 이름을 $로 연결해 값을 볼 수 있다(그런데 지금까지 프로그래밍 경험때문에 안쓸거 같다)
print(song$duration)
friends <- c("Kurt", "Florence", "Patti", "Dave")
song$sent <- friends
print(song)
song[["sent"]] <- friends
song$similar$reason <- "too long"
print(song)