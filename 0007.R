#0007

#table(mtcars$cyl)

#cnt <- table(mtcars$cyl)
#total <- length(mtcars$cyl)
#cnt/total
#barplot(cnt,
#        xlab = "기통",
#        ylab = "수량",
#        main = "기통별 수량량")
#pie(cnt,
#    main = "기통별 비율")

#summary(mtcars$wt)
#head(mtcars$wt)
#str(mtcars)
#wt_hist <- hist(mtcars$wt,
#                breaks = 5,
#                xlab = "무게",
#                ylab = "수량",
#                main = "무게별 수량량")

#wt_box <- boxplot(mtcars$wt,
#                  main = "무게 분포포")

#table(mtcars$am, mtcars$cyl)
#mtcars$label_am <- factor(mtcars$am,
#                          labels = c("automatic","manual"))
#table(mtcars$label_am, mtcars$cyl)

#prop.table <- prop.table(table(mtcars$label_am, mtcars$cyl))*100
#addmargins(round(prop.table, digit = 1))
#barplot(table(mtcars$label_am, mtcars$cyl),
#        xlab = "실린더수",
#        ylab = "수량량")
#cor_mpg_wt <- cor(mtcars$mpg,
#                  mtcars$wt)
#cor_mpg_wt
#plot(mtcars$mpg, mtcars$wt)
#aggregate(mpg ~ cyl,
#          data = mtcars,
#          FUN = mean)
#boxplot(mpg ~ cyl, data = mtcars, main = "기종별 연비비")

#install.packages("mlbench")
#library(mlbench)
#data("PimaIndiansDiabetes")
#df_pima <- PimaIndiansDiabetes[c(3:5,8)]
#str(df_pima)
#summary(df_pima)
#cor(x = df_pima, method = "pearson")
#cor(x = df_pima, method = "spearman")
#cor(x = df_pima, method = "kendall")

#install.packages("corrplot")
#library(corrplot)
#windows(width = 12, height = 10)
#corrplot(cor(df_pima), method = "circle", type = "lower")
#shapiro.test(df_pima$triceps)
#shapiro.test(df_pima$insulin)
#cor.test(df_pima$triceps, df_pima$insulin, method = "kendall")

data(mtcars)
m1 <- lm(hp~., data = mtcars)
m2 <- step(m1, direction = "both")
