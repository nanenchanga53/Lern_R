# The function Sys.time() returns the current time. 
# In the slide where we compared run times of elementwise squaring a matrix y containing elements generated with the rnorm() function, 
# and doing it using the object-oriented form of R. We looked at a huge matrix with 1.000.000 elements. What is the effect for small matrices? 
# Redo the runtime exercise with a matrix of dimension 10x10 instead of 1000x1000, and calculate the runtime increase factor. Comment.

k<-10
y<-matrix(rnorm(k^2),nrow=k)
z<-0*y

#loop:
time1<-as.numeric(Sys.time())
for(i in 1:k){
  #loop:
  for(j in 1:k){
    z[i,j]<-y[i,j]^2
  }
}

time2<-as.numeric(Sys.time())
# using object form in R:
time3<-as.numeric(Sys.time())
# using object form in R:
z<-y^2 #이걸로 계산하는게 빠르다
time4<-as.numeric(Sys.time())
# run time increase factor:
print((time2-time1)/(time4-time3)) #time4 랑 time3 가 거의 차이가 없어 0 이된다 터미널에서 실행하는걸로 재자

###########################################################

# Now, let k be the number of rows in the quadratic matrix y. 
# Calculate runtime increase factors as above for k=10, 20, 50, 100, 200, 500, 800 and 1000, 
# and plot the runtime increase factors as a function of the number of elements in y.

my.dimensions<-c(10,20,50,100,200,500,800,1000)
my.runtime.factors<-numeric(8)

r<-1
k<-my.dimensions[r]
y<-matrix(rnorm(k^2),nrow=k)
z<-0*y  
time1<-as.numeric(Sys.time())  
#loop:
for(i in 1:k){
  for(j in 1:k){
    z[i,j]<-y[i,j]^2
  }
}
time2<-as.numeric(Sys.time())
time3<-as.numeric(Sys.time())  
#z<-y^2
time4<-as.numeric(Sys.time())  
# run time increase factor: 
my.runtime.factors[r]<-(time2-time1)/(time4-time3)

plot(my.dimensions^2,my.runtime.factors, log="xy",xlab="Number of operations")