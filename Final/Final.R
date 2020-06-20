#Read in dataset
housing <- read.csv("JHouseData.csv")
summary(housing)
str(housing)

#No. housing units by Town
table(housing$Town)
sort(table(housing$Town))

#Table No. Housing units by type for each Town
table(housing$Town, housing$Type)
#SORT BY SINGLE FAMILY INCREASING
TownTypeTable <- table(housing$Town, housing$Type)
TownTypeTable[order(TownTypeTable[,3]),]

#Mean Sale_amount by town
tapply(housing$Sale_amount, housing$Town, mean)

#No. of Multi-Family homes
table(housing$Type)

#New Dataframe with only Single Family Homes
housingSF <- subset(housing, Type == "Single Family")
#Delete Type
housingSF$Type <- NULL
#Subset to specified towns
newHousing <- subset(housingSF, Town == "Lincoln, NE" | Town == "Eugene, OR" | Town == "Chapel Hill, NC")
#Fix factors
newHousing$Town <- factor(newHousing$Town)
newHousing$University <- factor(newHousing$University)

#NEW DATA SET
NH1 <- read.csv("JHouseDataThreeTowns.csv")

#NH1 Correlation matrix
cor(NH1[c(2:7)])
library(corrplot)
corrplot(cor(NH1[c(2:7)]))

#Scatterplots
pairs(NH1[c(2:7,9)])

#sales_amount and town
boxplot(NH1$Sale_amount ~ NH1$Town)

#Remove sale amount > 1500000
NH2 <- subset(NH1, Sale_amount <= 1500000)

#Order sale amount mean by town
NH2$Town <- factor(NH2$Town, levels = c("Lincoln, NE", "Eugene, OR", "Chapel Hill, NC"))

#Initial Regression on NH2
NH2lm1 <- lm(Sale_amount ~ Beds + Baths + Sqft_home + Sqft_lot + Town, data=NH2)
summary(NH2lm1)

#Regression Models
NH2lm2 <- lm(Sale_amount ~ Baths + Sqft_home + Sqft_lot + Town, data=NH2)
summary(NH2lm2)

#Data Analytics Regression
set.seed(2020)
n = nrow(NH2)
trainIndex = sample(1:n, size = round(0.6*n), replace = FALSE)
train <- NH2[trainIndex,]
test <- NH2[-trainIndex,]

trainReg <- lm(Sale_amount ~ Beds + Baths + Sqft_home + Sqft_lot + Town, data=train)
summary(trainReg)
predict.test <- predict(trainReg, test)
error <- test$Sale_amount - predict.test
(sse <- sum(error^2))
(rmse <- sqrt(sse/nrow(test)))
(mad <- mean(abs(error)))
(mape <- mean(abs(error)/test$Sale_amount))