movies <- read.csv("P02_02.csv")
movies$Index <- factor(movies$Index)
movies$Movie <- as.character(movies$Movie)

#Mean, Median, Q1, Q3, min, max for Total U.S. gross, 7-day gross ,and 14-day gross data
summary(movies[c("Total.US.Gross","X7.day.Gross","X14.day.Gross")])

#standard deviation
sd(movies$Total.US.Gross, na.rm = TRUE)
sd(movies$X7.day.Gross, na.rm = TRUE)
sd(movies$X14.day.Gross, na.rm = TRUE)

#Default Histogram
options(scipen=5)
hist(movies$Total.US.Gross)
#Half Breaks
hist(movies$Total.US.Gross, breaks = 5)