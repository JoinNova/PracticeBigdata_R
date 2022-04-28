#0005

#ds_NA <- head(airquality,5)
#ds_NA
#is.na(ds_NA)
#complete.cases(ds_NA)

#install.packages("mlbench")
#library(mlbench)
#data(PimaIndiansDiabetes2)
#Pima2 <- PimaIndiansDiabetes2
#str(Pima2)
#summary(Pima2)

#complete.cases(Pima2)
#is.na(Pima2)
#sum(is.na(Pima2))
#sum(!complete.cases(Pima2))
#colSums(is.na(Pima2))

#Pima2$insulin <- NULL
#Pima2$triceps <- NULL
#sum(!complete.cases(Pima2))
#colSums(is.na(Pima2))

#library(dplyr)
#Pima3 <- Pima2 %>% filter(!is.na(glucose) & !is.na(mass))
#colSums(is.na(Pima3))
#dim(Pima3)
#Pima4 <- na.omit(Pima3)
#colSums(is.na(Pima4))
#dim(Pima4)

#head(ds_NA$Ozone)
#ds_NA$Ozone <- ifelse(
#  is.na(ds_NA$Ozone),
#  mean(ds_NA$Ozone, na.rm = TRUE),
#  ds_NA$Ozone)
#table(is.na(ds_NA$Ozone))

#summary(Pima3)
#mean_press <- mean(Pima3$pressure, na.rm = TRUE)
#mean_press
#std_before <- sd(Pima3$pressure, na.rm = TRUE)
#std_before
#Pima3$pressure <- ifelse(is.na(Pima3$pressure), mean_press, Pima3$pressure)
#std_after <- sd(Pima3$pressure)
#std_after
#std_diff <- std_after - std_before
#print(std_diff)

#score <- c(1, 1, 1, 1, 1, 1, 1,
#           1, 1, 1, 1, 100000000)
#name <- c("A", "B", "C", "D", "E", "F",
#          "G", "H", "I", "J", "K", "L")
#df_score <- data.frame(name, score)
#esd <- function(x){
#  return(abs(x - mean(x))/sd(x) < 3)
#}
#library(dplyr)
#df_score %>% filter(esd(score))

#a <- 0: 9
#a
#str(a)
#a <- as.character(a)
#a
#str(a)

#a <- 0:9
#a <- as.character(a)
#a <- as.numeric(a)
#a
#str(a)
#a <- as.double(a)
#a
#typeof(a)
#a <- as.logical(a)
#a
#str(a)

#a <- 10
#typeof(a)
#a <- as.integer(a)
#typeof(a)
#a <- 0:9
#a <- as.logical(a)
#a <- as.integer(a)
#a
#str(a)

#a <- 0:4
#str(a)
#a <- as.data.frame(a)
#a
#str(a)

#a <- 0:9
#a <- as.data.frame(a)
#a <- as.list(a)
#a

#a <- 0:4
#a <- as.matrix(a)
#a
#str(a)

#a <- 0:9
#a <- as.vector(a)
#a
#str(a)

#a <- as.factor(a)
#a
#str(a)

#data <- c(1, 3, 5, 7, 9)
#data_minmax <- scale(data,
#                     center = 1, scale = 8)
#data_minmax
#mode(data)
#class(data)

#a <- 1:10
#a
#normalize <- function(a){
#  return ((a-min(a))/(max(a)-min(a)))
#}
#normalize(a)
#as.vector(scale(a))

#data <- c(1, 3, 5, 7, 9)
#data_zscore <- scale(data)
#mean(data_zscore)
#sd(data_zscore)
#data_zscore

