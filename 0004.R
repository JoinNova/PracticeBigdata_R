#install.packages("dplyr")
#library(dplyr)

#0001

#scan("")
#df <- read.table(
#        file = "data.txt",
#        header = TRUE)
#df

#write.table(iris,
#            file = "write.txt")

#csv_data <- read.csv(
#  file = "data.csv",
#  header = TRUE
#)
#csv_data

#write.csv(csv_data,
#          file = "wirte,csv")

#tsv_data <- read.delim(
#  file = "data.tsv",
#  header = TRUE
#)
#tsv_data

#write.table(
#  tsv_data,
#  file = "wirte.tsv",
#  sep = "\t"
#)
#tsv_data

#install.packages("readxl")
#library(readxl)

#excel_data <- read_excel(
#  path = "data.xlsx",
#  sheet = "Sheet1",
#  range = "A1:B4",
#  col_names = TRUE)
#View(excel_data)

#install.packages("openxlsx")
#library(openxlsx)

#write.xlsx(
#  excel_data,
#  file = "write.xlsx"
#)

#install.packages("plydddr")
#library(plyr)

#adply(iris, 1, function (row) {row$Sepal.Length >= 5.0 &
#                              row$Species == "setosa"})

#library(plyr)
#ddply(iris, .(Species, Petal.Length<1.5), function(sub){
#  data.frame(
#    mean_to=mean(sub$Sepal.Length), mean_so=mean(sub$Sepal.Width),
#    mean_wo=mean(sub$Petal.Length), mean_jo=mean(sub$Petal.Width))
#    })

#ddply(iris, .(Species), summarise, mean_to=mean(Sepal.Length))

#transform(iris, Total.w=Sepal.Width+Petal.Width)

#library(dplyr)
#select <- dplyr::select
#iris %>% select(Sepal.Length)

#iris %>% filter(Species == 'setosa') %>% select(Sepal.Length, Sepal.Width)

#iris %>%
#  filter(Species == 'virginica') %>%
#  mutate(Len = ifelse(Sepal.Length>6, 'L', 'S')) %>% select(Species, Len)

#iris %>%
#  group_by(Species) %>%
#  summarise(Petal.Width = mean(Petal.Width))

#iris %>%
#  filter(Species == 'setosa') %>%
#  mutate(Len = ifelse(Sepal.Length>5, 'L', 'S')) %>%
#  select(Species, Len, Sepal.Length) %>%
#  arrange(desc(Sepal.Length))

#X <- data.frame(Department = c(11, 12, 13, 14),
#                DepartmentName = c("Production", "Sales",
#                                   "Marketing", "Research"),
#                Manager = c(1, 4, 5, NA))
#X

#Y <- data.frame(Employee = c(1, 2, 3, 4, 5, 6),
#                EmployeeName = c("A", "B", "C", "D", "E", "F"),
#                Department = c(11, 22, 12, 12, 13, 21),
#                Salary = c(80, 60, 90, 100, 80, 70))
#Y

#inner_join(X, Y, by = "Department")

#left_join(X, Y, by = "Department")
#right_join(X, Y, by = "Department")
#full_join(X, Y, by = "Department")

#x <- data.frame(x=1:3, y=1:3)
#x
#y <- data.frame(x=4:6, z=4:6)
#y
#bind_rows <- dplyr::bind_rows
#bind_rows(x, y)

#x <- data.frame(title=c(1:5),
#                a=c(30, 70, 45, 90, 65))
#x
#y <- data.frame(b=c(70, 65, 80, 80, 90))
#y
#bind_cols <- dplyr::bind_cols
#bind_cols(x, y)

#install.packages('reshape2')
#library(reshape2)
#install.packages("MASS")
#library(MASS)
#a <- melt(data = Cars93,
#          id.vars = c("Type", "Origin"),
#          measure.vars = c("MPG.city", "MPG.highway"))
#a

#a <- melt(data = Cars93,
#          id.vars = c("Type", "Origin"),
#          measure.vars = c("MPG.city", "MPG.highway"))
#dcast(data = a, Type + Origin ~ variable, fun = mean)

#install.packages("data.table")
#library(data.table)
#t <- data.table(x=c(1:3),
#                y=c("가","나","다"))
#t

#iris_table <- as.data.table(iris)
#iris_table

iris_table <- as.data.table(iris)
iris_table[1, ]
iris_table[c(1:2), ]
iris_table[ ,mean(Petal.Width), by=Species]

install.packages("tidyverse")
library(tidyverse)
