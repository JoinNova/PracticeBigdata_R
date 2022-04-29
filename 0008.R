#008

data(mtcars)
m1 <- lm(hp~., data = mtcars)
m2 <- step(m1, direction = "both")

#library(mlbench)
#data(PimaIndiansDiabetes)
#pima <- PimaIndiansDiabetes
#summary(pima$age)
#library(dplyr)
#pima <- pima %>% mutate(age_gen = cut(pima$age, c(20, 40, 60, 100),
                                      right = FALSE, labels = c("Young", "Middle", "Old")))
#table(pima$age_gen)

#중요도 <- c('상', '중', '하')
#df <- data.frame(중요도)
#df
#transform(df,
#          변수1 = ifelse(중요도 == "중", 1, 0),
#          변수2 = ifelse(중요도 == "하", 1, 0))

#iris_pca <- princomp(iris[, -5],
#                    cor = FALSE,
#                    scores = TRUE)
#summary(iris_pca)
#plot(iris_pca, type= "l", main = "iris 스크리 산점도도")
#iris_pca$loadings
#iris_pca$scores
#biplot(iris_pca, scale = 0, main = "iris biplot")

install.packages("ISLR")
library(ISLR)
summary(lm(Salary ~ PutOuts, data = Hitters))

str(Hitters)
head(Hitters)
summary(Hitters)
hitters <- na.omit(Hitters)
summary(hitters)
#str(hitters)
#hitters$Division <- as.integer(hitters$Division)
#hitters$Salary <- as.integer(hitters$Salary)
first_model <- lm(Salary ~
                    AtBat + Hits + Walks + CWalks + Division + PutOuts,
                  data = hitters)
fit_model <- step(first_model, direction = "backward")

install.packages("car")
library(car)
vif(fit_model)
second_model <- lm(Salary ~ Hits + CWalks + Division  + PutOuts,
                   data = hitters)
vif(second_model)
summary(second_model)

install.packages("ModelMetrics")
library(ModelMetrics)
str(Default)
head(Default)
summary(Default)

bankruptcy <- Default
set.seed(202012)
train_idx <- sample(
  1 : nrow(bankruptcy),
  size = 0.8*nrow(bankruptcy),
  replace = FALbankruptSE
)
test_idx <- (-train_idx)
bankruptcy_train <- bankruptcy[train_idx,]
bankruptcy_test <- bankruptcy[test_idx]
full_model <- glm(default ~ .,
                  family = binomial,
                  data = bankruptcy_train)
step_model <- step(full_model,
                   derection = "both")
summary(step_model)
null_deviance <- 2354.0
residual_deviance <- 1287.4
model_deviance <- null_deviance - residual_deviance
pchisq(model_deviance,
       df = 2,
       lower.tail = FALSE)
vif(step_model)
pred <- predict(step_model,
                newdata = bankruptcy_test[,-1],
                type = "response")
df_pred <- as.data.frame(pred)
df_pred$default <-
  ifelse(de_pred$pred >=0.5,
         df_fred$default <- "Yes",
         df_pred$default <- "No")
df_pred$default <-
  as.factor(df_pred$default)
comfusionMatrix(data = df_pred$default,
                reference = bankruptcy_test[,-1])
library(ModelMetrics)
auc(actual = bankruptcy_test[,-1], predicted = df_pred$default)

str(iris)
head(iris)
summary(iris)

library(rpart)
md <- rpart(Species ~., data = iris)
md
plot(md, compress = TRUE, margin = 0.5)
text(md, cex = 1)

install.packages("rpart.plot")
library(rpart.plot)
prp(md, type = 2, extra = 2)

ls(md)
md$cptable
plotcp(md)

tree_pred <- predict(md,
                     newdata = iris,
                     type = "class")
library(caret)
confusionMatrix(tree_pred,
                reference = iris$Species)

str(iris)
head(iris)
summary(iris)
install.packages("svm")
library(svm)
model <- svm(Species ~., data = iris)
