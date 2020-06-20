#Read in Dataframe
creditDF <- read.csv("Credit.csv")
str(creditDF)
summary(creditDF)
creditDF$Education <- factor(creditDF$Education, levels = c("Some HS", "HS", "Some College", "College", "Post Grad"))

#Exploratory Data Analysis
#Continuous Variables
cor(creditDF[c(1:5,11)])
pairs(~Balance + Income + Limit + Rating + Cards + Age, data = creditDF)
lm <- lm(Balance ~ Income + Limit + Rating + Cards + Age, data = creditDF)
summary(lm)
lm2 <- lm(Balance ~ Income + Rating + Cards + Age, data = creditDF)
summary(lm2)
lm3 <- lm(Balance ~ Limit + Rating + Cards + Age, data = creditDF)
summary(lm3)
hist(resid(lm))
skewness(resid(lm))
kurtosis(resid(lm))
#Categorical Variables
boxplot(creditDF$Balance ~ creditDF$Education, main = "Balance by Education")
tapply(creditDF$Balance, creditDF$Education, summary)
table(creditDF$Education)
boxplot(creditDF$Balance ~ creditDF$Gender, main = "Balance by Gender")
tapply(creditDF$Balance, creditDF$Gender, summary)
table(creditDF$Gender)
boxplot(creditDF$Balance ~ creditDF$Student, main = "Balance by Student")
tapply(creditDF$Balance, creditDF$Student, summary)
table(creditDF$Student)
boxplot(creditDF$Balance ~ creditDF$Married, main = "Balance by Married")
tapply(creditDF$Balance, creditDF$Married, summary)
table(creditDF$Married)
boxplot(creditDF$Balance ~ creditDF$Area, main = "Balance by Area")
tapply(creditDF$Balance, creditDF$Area, summary)
table(creditDF$Area)

#Partition the data
n <- nrow(creditDF)
set.seed(2020)
trainIndex <- sample(1:n, size=round(0.6*n), replace = FALSE)
train <- creditDF[trainIndex, ]
test <- creditDF[-trainIndex, ]
#Check similarity
table(test$Education)
table(train$Education)
table(test$Gender)
table(train$Gender)
table(test$Student)
table(train$Student)
table(test$Married)
table(train$Married)
table(test$Area)
table(train$Area)

#Regression Models
lmAll <- lm(Balance ~., data = train)
summary(lmAll)
lm4 <- lm(Balance ~. - Gender - Married - Area, data = train)
summary(lm4)
lm5 <- lm(Balance ~. - Gender - Married - Area - Rating, data = train)
summary(lm5)
lm6 <- lm(Balance ~. - Gender - Married - Area - Rating - Age, data = train)
summary(lm6)
lm7 <- lm(Balance ~. - Gender - Married - Area - Rating - Age - Education, data = train)
summary(lm7)
lmStepped <- step(lmAll)
summary(lmStepped)

#Test Regressions
predict.test1 <- predict(lm4, test)
error1 <- test$Balance - predict.test1
(sse1 <- sum(error1^2))
(rmse1 <- sqrt(sse1/nrow(test)))
(mad1 <- mean(abs(error1)))
(mape1 <- mean(abs(error1)/test$Balance))
predict.test2 <- predict(lm5, test)
error2 <- test$Balance - predict.test2
(sse2 <- sum(error2^2))
(rmse2 <- sqrt(sse2/nrow(test)))
(mad2 <- mean(abs(error2)))
(mape2 <- mean(abs(error2)/test$Balance))
predict.test3 <- predict(lm6, test)
error3 <- test$Balance - predict.test3
(sse3 <- sum(error3^2))
(rmse3 <- sqrt(sse3/nrow(test)))
(mad3 <- mean(abs(error3)))
(mape3 <- mean(abs(error3)/test$Balance))