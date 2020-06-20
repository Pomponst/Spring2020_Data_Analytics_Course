#Part 1
flights11_19 <- read.csv("ONTIME_Download_All_11_19.csv")
table(flights11_19$ARR_DEL15)
prop.table(table(flights11_19$ARR_DEL15))
table(flights11_19$ARR_DEL15, flights11_19$OP_CARRIER)
prop.table(table(flights11_19$ARR_DEL15, flights11_19$OP_CARRIER),2)

#Part 2
TiData <- read.csv("titanic3.csv")
TiData$pclass <- as.factor(TiData$pclass)
TiData$survived <- as.factor(TiData$survived)
TiData$name <- as.character(TiData$name)
summary(TiData)
prop.table(table(TiData$sex, TiData$survived),1)
table(TiData$pclass, TiData$survived)
prop.table(table(TiData$pclass, TiData$survived))
prop.table(table(TiData$pclass, TiData$survived),1)
prop.table(table(TiData$pclass, TiData$survived),2)