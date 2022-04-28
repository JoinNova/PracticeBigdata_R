#0006

s <- sample(x = 1:10,
            size = 5,
            replace = FALSE)
s
s <- sample(x = 1:10,
            size = 5,
            replace = TRUE)
s
s <- sample(x = 1:10,
            size = 5,
            replace = TRUE,
            prob = 1:10)
s

install.packages("caret")
library(ggplot2)
library(lattice)
library(caret)
ds <- createDataPartition(
  iris$Species, times = 1, p = 0.7
)
ds
table(iris[ds$Resample1, "Species"])
table(iris[-ds$Resample1, "Species"])
idx <- as.vector(ds$Resample1)
ds_train <- iris[idx,]
ds_test <- iris[-idx,]

ds_k_fold <-
  createFolds(iris$Species,
              k=3,
              list=TRUE,
              returnTrain = FALSE)
ds_k_fold

x <- c(0:50, 50)
x
mean(x)
mean(x, trim = 0.10)
library(dplyr)
cars %>%
  summarise(
    mean01 = mean(speed),
    mean02 = mean(speed, trim=0.1)
  )

x <- c(12, 7, 5, -21, 8, -5)
median(x)
x <- c(12, 7, 4, -4, NA) 
median(x)
median(x, na.rm = TRUE)
median(cars$speed)
cars %>%
  summarise(
    median01 = median(speed)
  )
getmode <- function(x) {
  y <- table(x)
  names(y)[which(y==max(y))]
}
x<- c(2, 1, 1, 3, 1)
getmode(x)

v <- c(3, 4, 5, 2, 4, 3, 4)
var(v)
var(1:10)

v <- c(3, 4, 5, 2, 4, 3, 4)
sd(v)
sd(1:10)

v <- c(1, 7, 3, 5, 11, 4, 6)
diff(range(v))
diff(range(1:10))

x <- c(1, 1, 5, 5, 9, 7)
x
row_number(x)
min_rank(x)
dense_rank(x)

cars %>%
  arrange(dist) %>%
  mutate(rank=row_number(dist))
cars %>%
  arrange(dist) %>%
  mutate(rank = min_rank(dist))
cars %>%
  arrange(dist) %>%
  mutate(rank = dense_rank(dist))
