#Read in Dataframe
YearBook <- read.csv("Valley Publishing (A) 1.csv")

#Correlations
cor(YearBook)

#Correlation Scatterplots
pairs(~Actual.Cost + No..Books.Delivered + Pages.Book + Color.Pages.Book, data = YearBook)

#(3x)Regression Model
YearBookRegr <- lm(Actual.Cost ~ No..Books.Delivered + Pages.Book + Color.Pages.Book, data = YearBook)
summary(YearBookRegr)
plot(predict(YearBookRegr), resid(YearBookRegr))
hist(resid(YearBookRegr))
skewness(resid(YearBookRegr))
kurtosis(resid(YearBookRegr))

#(2x)Regression Model
YearBookRegr2 <- lm(Actual.Cost ~ No..Books.Delivered + Pages.Book, data = YearBook)
summary(YearBookRegr2)
hist(resid(YearBookRegr2))
skewness(resid(YearBookRegr2))
kurtosis(resid(YearBookRegr2))

#(2x)Regression Model 2
YearBookRegr3 <- lm(Actual.Cost ~ No..Books.Delivered + Color.Pages.Book, data = YearBook)
summary(YearBookRegr3)

#(2x)Regression Model 3
YearBookRegr4 <- lm(Actual.Cost ~ Pages.Book + Color.Pages.Book, data = YearBook)
summary(YearBookRegr4)