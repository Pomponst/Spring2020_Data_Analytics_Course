# Assignment Week 6 Unit 2
*Part 1.*<br>
Revisit the airlines data (flights218) from the last assignment. The column ARR_DEL15 has the value 1 if the flight arrives 15 minutes or more late, and is 0 otherwise. Let’s use this as the definition of on-time performance.
1. How many on-time flights and how many late flights are there in the data set. Hint: Consider using table().
2. What proportion of all flights were delayed (had an ARR_DEL15 value of 1)? Note, as there is only one row in this table, don’t use the ,1 or ,2 arguments – the only proportion you need is the one formed by taking each of the counts and dividing by the total number of counts.
3. How many on-time flights and how many late flights are there by CARRIER?
4. Presuming this data is representative of carrier performance in the near future, given no other information other than I’ll be flying Delta (DL) what’s the probability that my flight will be delayed? Provide your answer to 4 decimal places.
5. Which carrier is the worst/best in terms of delays?

*Part 2.*<br>
I’m sure you’re familiar with the story of the Titanic. The file **titanic3.csv** contains information on 1,309 Titanic passengers.<br>
Here’s a description of the data.
|Variable|Description|
|----------|-------------|
|pclass|Passenger Class|
|survived|Survival (0=No, 1=Yes)|
|sex|Sex (0=Male, 1=Female)|
|age|Age (in years)|
|fare|Passenger Fare (in British pounds)|
|port|Embarkation Port (C=Cherbourg;Q=Queenstown; S=Southhampton)|
|boat|Lifeboat #|

(Not all variables in the data set are described above.)<br>
You should begin by reading the csv file into a data frame called **TiData**. Take a look at the DF via the usual approaches. 
1. Convert both **pclass** and **survived** to (unordered) factor variables. (Yes, **pclass** should probably be ordered, but simpler here, at least for now, to make it unordered.) Although you won’t be using this variable, convert **name** to character.
2. Provide below the R commands you used (and the output of those commands) to generate relevant summary statistics so that you have a good sense of the data.
3. You are likely familiar with the expression, “Women and children first.” Does it appear that a woman was more likely to have survived the Titanic sinking than a man?
	1. Note: Two possible **incorrect** explanations are, “As more women survived than men, it appears to be true,” and “As fewer women survived then men, it seems to be false.”
4. Does there appear to be a relationship between survival and Pclass? That is, does it seem that everyone had an equal likelihood of surviving irrespective of passenger class, or did class make a difference?
