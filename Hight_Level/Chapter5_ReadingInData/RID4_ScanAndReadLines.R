#scan() and readLines()
f1<-file("Hight_Level/Chapter5_ReadingInData/Exercise 5.4a.txt", open="r")
my.names<-scan(f1,what="",nlines=1,skip=1) #이름만 읽어오기
my.data<-read.table(f1)
close(f1)
print("--my.data--")
print(my.data)

my.names<-paste(my.names[c(1,3,5)],my.names[c(2,4,6)]) #이름추가
names(my.data)<-my.names
print("--my.data--")
print(my.data)

my.data<-list()
my.names<-character(2)
f1<-file("Hight_Level/Chapter5_ReadingInData/Exercise 5.4b.txt", open="r")

my.names[1]<-scan(f1,what="",nlines=1,skip=1)
my.data[[1]]<-scan(f1,nlines=1)
print("--my.data[[1]]--")
print(my.data[[1]])

my.names[2]<-scan(f1,what="",nlines=1)
my.data[[2]]<-matrix(scan(f1),nrow=4,byrow=T)
print("--my.data[[2]]--")
print(my.data[[2]])

close(f1)
names(my.data)<-my.names
print("--my.data--")
print(my.data)