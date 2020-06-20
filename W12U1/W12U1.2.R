#Read in Dataframe
YearBook2 <- read.csv("Valley Publishing (A) 2.csv")

#(3x)Regression Model
YearBookRegr <- lm(Actual.Cost ~ No..Books.Delivered + Pages.Book + Color.Pages.Book, data = YearBook2)
summary(YearBookRegr)

#(2x)Regression Model 2
YearBookRegr2 <- lm(Actual.Cost ~ No..Books.Delivered + Pages.Book, data = YearBook2)
summary(YearBookRegr2)

#(2x)Regression Model 2
YearBookRegr3 <- lm(Actual.Cost ~ No..Books.Delivered + Color.Pages.Book, data = YearBook2)
summary(YearBookRegr3)
hist(resid(YearBookRegr3))
skewness(resid(YearBookRegr3))
kurtosis(resid(YearBookRegr3))

#Linear Regression
YearBookLinRegr <- lm(Actual.Cost ~ No..Books.Delivered, data = YearBook2)
summary(YearBookLinRegr)
hist(resid(YearBookLinRegr))
skewness(resid(YearBookLinRegr))
kurtosis(resid(YearBookLinRegr))