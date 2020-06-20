#New Column of Temp Diff
Accidents$TempDiff <- Accidents$Temperature.F. - Accidents$Wind_Chill.F.

#Boxplot of Distance by Severity
boxplot(Accidents$Distance.mi. ~ Accidents$Severity)

#Count of Accidents by subset
#TX & Severity higher than 3
nrow(subset(Accidents, State == "TX" & Severity >=3))
#TX Or Severity higher than 3
nrow(subset(Accidents, State == "TX" & Severity >=3))
#TX & Either Severity of 4 OR Temp > 90F
nrow(subset(Accidents, State == "TX" & (Severity ==4 | Temperature.F. > 90)))

#Rows 9-21 & Columns 1-7
Accidents[9:21,1:7]
#Rows 9-21 & Columns 1,3,8,11
Accidents[9:21,c(1,3,8,11)]
#Even Rows 10-100 & Columns 1-4
Accidents[seq(10,100,by=2),1:4]

#Subset of accidents between months 4&9
Q3Q4 <- subset(Accidents, Month >= 4 & Month <= 9)

#Difference in no. of accidents between Accidents & Q3Q4
nrow(Accidents) - nrow(Q3Q4)