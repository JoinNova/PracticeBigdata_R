#0001

#x <- c(1,2,3,4)
#x

#y <- c("1","2","3")
#y

#z <- 5:10
#z

#x <- rep (c(1,2,3),3)
#x

#seq(1,10,3)

#x <- c(3:8)
#x

#x[4]
#x[x>5]
#x[5:8]

#x <-c(1:3)
#x*3
#y <- c(3:5)
#x+y
#x*y


#0002

#list(name="soo",height=90)
#list(name="soo",height=c(2,6))
#list(x=list(a=c(1,2,3)),
#     y=list(b=c(1,2,3,4)))


#0003

#matrix(c(1:12), nrow=4)
#matrix(c(1:12), ncol=4)
#matrix(c(1:12), nrow=3, byrow=TRUE)
#matrix(c(1:9), nrow=3,
#       dimnames=list(c("t1", "t2", "t3"),
#                     c("c1", "c2", "c3")))

#a <- matrix(c(1:4), nrow=2)
#a
#b <- matrix(c(1:4), nrow=2)
#b
#a+b
#a*b
#t(a)
#solve(a)
#a%*%b

#d <- data.frame(a=c(1,2,3,4),
#                b=c(2,3,4,5),
#                e=c('M', 'F', 'M', 'F'))
#d
#str(d)

#rn = c("1행", "2행")
#cn = c("1열", "2열")
#mn = c("1차원", "2차원")
#array(1:8,
#      dim=c(2,2,2),
#      dimnames=list(rn, cn, mn))


#0004

#factor("s",
#       levels=c("s", "l"))
#factor(c("a", "b", "c"),
#       ordered = TRUE)

#x <- data.frame(a=c("s1", "s2", "s3"),
#                b=c("A", "B", "C"))
#x
#y <- data.frame(a=c("s5", "s6", "s7"),
#                b=c("E", "F", "G"))
#y
#rbind(x, y)

#x <- data.frame(a=c("a", "b", "c"),
#                b=c(80, 60, 70))
#x
#cbind(x, d=c(1,2,3))

#x <- data.frame(name=c("a", "b", "c"),
#                math=c(1, 2, 3))
#y <- data.frame(name=c("c", "b", "d"),
#                english=c(4, 5, 6))
#merge(x, y)
#merge(x, y, all.x=TRUE)
#merge(x, y, all=TRUE)


#0005

#score = 95
#if( score >= 90 ){
#    print("수")
#} else if( score >= 80 ){
#  print( "우" )
#} else {
#  print( "가" )
#}

#score = 95
#ifelse( score >= 60, "Pass", "FaiL")

#course = "C"
#switch(course,
#       "A" = "brunch",
#       "B" = "lunch",
#       "dinner")


#0006

#for (i in 1:4) {
#  print(i)
#}

#i=1
#while (i <= 4){
#  print(i)
#  i=i+1
#}

#i=1
#repeat{
#  print(i)
#  if (i>=2){
#    break
#  }
#  i=i+1
#}

#for(i in 1:5){
#  print(i)
#  if(i>=2){
#    break
#  }
#}

#for(i in 1:5){
#  if(i==2){
#    next
#  }
#  print(i)
#}

#func_abs=function(x){
#  if(x<0){
#    return (-x)
#  }else{
#    return(x)
#  }
#}
#func_abs(-10.9)
#func_abs(10.1)

#func_diff = function(x, y){
#  print(x)
#  print(y)
#  print(x-y)
#}
#val = func_diff(9, 1)
#val


#0007

#a = c(3, 5, 4)
#plot(a)

#length <- iris$Petal.Length
#plot( x=length)

#length <- iris$Petal.Length
#width <- iris$Petal.Width
#plot(x = length,
#     y = width)

#length <- iris$Petal.Length
#plot( x=length)

#length <- iris$Petal.Length
#width <- iris$Petal.Width
#plot(length,
#     width,
#     xlab = "꽃잎 길이",
#     ylab = "꽃잎 너비",
#     main = "꽃잎과 길이")

#x <- c(1, 5, 2, 4, 6, 9, 11, 8, 13)
#plot(x,
#     main = "시계열 그래프 예제",
#     type = "l")

#length <- iris$Sepal.Length
#hist(length,
#     xlab = "꽃받침 길이",
#     ylab = "수량",
#     main = "꽃받침 길이 분포")

#length <- iris$Sepal.Length
#hist(x = length,
#     breaks = 4,
#     freq = FALSE)

#h <- c(15, 23, 5, 20)
#name <- c("1분기", "2분기",
#          "3분기", "4분기기")
#barplot(h,
#        names.arg = name)

#h <- table(iris$Species)
#barplot(h,
#        ylab = "수량",
#        main = "종별 수량")

#sales <- c(15, 23, 5, 20)
#seasons <- c("1분기", "2분기",
#             "3분기", "4분기기")
#df <- data.frame(sales,
#                 seasons)
#barplot(sales ~ seasons, data = df)

#p <- c(15, 23, 5, 20)
#l <- c("1분기", "2분기",
#       "3분기", "4분기")
#pie(x = p,
#    labels = l)

#p <- c(15, 23, 5, 20)
#l <- c("1분가", "2분기",
#       "3분기", "4분기")
#pie(x = p,
#    labels = l,
#    density = 50,
#    angle = 30 * 1:4)

#s <- iris$Sepal.Length
#boxplot(s,
#        main = "꽃받침 길이 분포포")

#boxplot(iris$Sepal.Length ~
#          iris$Species,
#        notch = TRUE,
#        xlab = "종별",
#        ylab = "꽃받침 길이",
#        main = "종별 꽃받침 길이 분포")

#install.packages("ggplot2")
#library(ggplot2)


#0008

gglot(diamonds,
      aes(color)
      )+geom_bar()
