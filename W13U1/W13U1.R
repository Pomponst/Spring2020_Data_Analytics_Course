# Read in dataset
climate <- read.csv("climate_change.csv")
str(climate)

#Split into train and test sets
train <- subset(climate, Year <= 2006)
test <- subset(climate, Year > 2006)

#Regression Model
climateReg <- lm(Temp ~ MEI + CO2 + CH4 + N2O + CFC.11 + CFC.12 + TSI + Aerosols, data = train)
summary(climateReg)

#Caculate Correlations
cor(train[,3:10])

#Simplified Model
climateReg2 <- lm(Temp ~ MEI + N2O + TSI + Aerosols, data = train)
summary(climateReg2)

#Stepped Model
climateRegStep <- step(climateReg)
summary(climateRegStep)

#Apply Model
predict.test <- predict(climateReg2, test)
error <- test$Temp - predict.test
(sse <- sum(error^2))
(rmse <- sqrt(sse/nrow(test)))
(mad <- mean(abs(error)))
(mape <- mean(abs(error)/test$Temp))

#Apply Model Stepped
predict.test2 <- predict(climateRegStep, test)
error2 <- test$Temp - predict.test2
(sse2 <- sum(error2^2))
(rmse2 <- sqrt(sse2/nrow(test)))
(mad2 <- mean(abs(error2)))
(mape2 <- mean(abs(error2)/test$Temp))