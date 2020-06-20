#W5U2 Assignment

#1
flights11_19 <- read.csv("ONTIME_Download_All_11_19.csv")

#2
str(flights11_19)

#3
summary(flights11_19)

#4
flights11_19$QUARTER <- NULL
flights11_19$MONTH <- NULL

#5
names(flights11_19)

#6
options(scipen = 999)
plot(flights11_19$OP_CARRIER, ylim = c(0,125000), xlab = "Airline", ylab = "No. of Flights", main = "Number of Flights by Carrier")

#7
table(flights11_19$OP_CARRIER)

#8
flights11_19$DAY_OF_WEEK <- as.factor(flights11_19$DAY_OF_WEEK)
plot(flights11_19$DAY_OF_WEEK, ylim = c(0, 120000), xlab = "Day of the Week", ylab = "No. of Flights", main = "Number of Flights by Day of the Week" )

#10
hist(flights11_19$DISTANCE)

#11
str(hist(flights11_19$DISTANCE)$counts)

#12
boxplot(flights11_19$DISTANCE ~ flights11_19$OP_CARRIER)

#14
#Count of all flights by arrival delay group
table(flights11_19$ARR_DELAY_GROUP)
#Boxplot of all flights by arrival delay group
boxplot(flights11_19$ARR_DELAY ~ flights11_19$ARR_DELAY_GROUP, main="Arrival Delay Times by Arrival Delay Group", xlab="Arrival Delay Group", ylab="Minutes")
#Boxplot of flights with early arrivals greater than 15minutes
boxplot(flights11_19$ARR_DELAY ~ flights11_19$ARR_DELAY_GROUP, subset=flights11_19$ARR_DELAY_GROUP %in% -2, main="Early Arrival Times Greater than 15minutes", horizontal=TRUE, xlab="Minutes")
boxplot(flights11_19$ARR_DELAY ~ flights11_19$ARR_DELAY_GROUP, subset=flights11_19$ARR_DELAY_GROUP %in% -2, main="Early Arrival Times Greater than 15minutes", horizontal=TRUE, xlab="Minutes")$stats
#Boxplot of flights with delayed arrivals greater than 180 minutes (3 hours)
boxplot(flights11_19$ARR_DELAY ~ flights11_19$ARR_DELAY_GROUP, subset=flights11_19$ARR_DELAY_GROUP %in% 12, main="Delayed Arrival Times Greater than 180minutes", horizontal = TRUE, xlab="Minutes")
boxplot(flights11_19$ARR_DELAY ~ flights11_19$ARR_DELAY_GROUP, subset=flights11_19$ARR_DELAY_GROUP %in% 12, main="Delayed Arrival Times Greater than 180minutes", horizontal = TRUE, xlab="Minutes")$stats
#Boxplot of flight arrival delay times by carrier
boxplot(flights11_19$ARR_DELAY ~ flights11_19$OP_CARRIER, main="Arrival Delay Times by Airliner", ylab="Minutes", xlab="Airline")