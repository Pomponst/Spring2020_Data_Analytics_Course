#Read Data In
SHD98038 <- read.csv("Seattle House Data - Zip98038.csv")

#Create Scatter plot of price vs. sqft_living
plot(SHD98038$sqft_living, SHD98038$price, main = "Seattle House Data (Zip 98038) 
     Price vs. Sqft Living")

#Remove houses with prices >$1M
SHD98038 <- subset(SHD98038, price < 1000000)

#Correlation between price and sqft_living
cor(SHD98038$price, SHD98038$sqft_living)

#Set Seed to 1000 and create training set
n <- nrow(SHD98038)
set.seed(1000)
trainIndex <- sample(1:n, size=round(0.6*n), replace=FALSE)
train <- SHD98038[trainIndex, ]

#Create test set
test <- SHD98038[-trainIndex, ]

#Verify data
nrow(test) + nrow(train) == nrow(SHD98038)

#Head to show staring rows of train and test
head(train)
head(test)

#Regression model of price vs. sqft_living using training data
trainReg <- lm(price ~ sqft_living, data=train)

#Summary of regression model
summary(trainReg)

#Apply model to test data
predict.test <- predict(trainReg, test)

#Summary Values
#Errors
error <- test$price - predict.test
#SSE
sse <- sum(error^2)
sse
#RMSE
rmse <- sqrt(sse/nrow(test))
rmse
#MAD
mad <- mean(abs(error))
mad
#MAPE
mape <- mean(abs(error)/test$price)
mape