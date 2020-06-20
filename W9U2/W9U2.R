#Load Data
SHD <- read.csv("Seattle House Price v Sqft_Living.csv")
str(SHD)
summary(SHD)

#Regression Line
PriceReg <- lm(SHD$price ~ SHD$sqft_living)
summary(PriceReg)

#Plot
plot(SHD$sqft_living, SHD$price, main = "Price vs. Living Room Square Footage", 
     xlab = "Living Room Sqft", ylab = "Price")
lines(SHD$sqft_living, fitted(PriceReg), col = "blue")

#SSR; SSE; SST
sum((fitted(PriceReg) - mean(SHD$price))^2)
sum(resid(PriceReg)^2)
sum((SHD$price - mean(SHD$price))^2)

#Check Residual Normality
library(e1071)
hist(resid(PriceReg))
skewness(resid(PriceReg))
kurtosis(resid(PriceReg))
