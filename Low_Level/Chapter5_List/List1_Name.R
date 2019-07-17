#리스트는 벡터와 배열과는 다르게 한가지타입의 값만 저장하는게 아니라 여러 타입의 값을 갖는다.
song <- list("Rsome times", 190, 5)
print(is.list(song))

#이것도 값들에 이름을 지정할 수 있다.
names(song) <- c("title", "duration", "track")
#song <- list(title = "Rsome times", duration = 190, track = 5)
print(song)
rm(song)

similar_song <- list(title = "R you on time?", duration = 230)
#리스트도 하나의 개채로 친다
song <- list(title = "Rsome times", duration = 190, track = 5, similar = similar_song)
print(str(song))