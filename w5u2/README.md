# Assignment Week 5 Unit 2

*Tasks*
1. Read the data into R data frame called **flights11_19**. (The 11_19 is for the month and year.) Be sure to use this name for the data frame and not some variation.
2. Enter a command to get general information regarding the data, like number of observations, number of variables, the names of all the variables, the data types of all the variables, etc. (You should view this output carefully – make sure everything makes sense to you.)
3. Enter a command to get summary statistics for all the variables in the data frame.
4. As the data is for the month of November, we don’t need the QUARTER and MONTH variables. Therefore, remove them from the data frame.
5. Enter a command that outputs **just the names** of the variables currently in the data set, to make sure QUARTER and MONTH are no longer there.
6. Create a column chart of the number of flights by CARRIER. (The carrier is the airline.) You’ll have to broaden the Plots area if you want to see all the carrier designations at the bottom of the chart. Be sure your chart includes row and column labels and a title. The numbers on the y-axis of your chart should be in fixed format. Provide the command to create the chart below, and paste your chart here as well. 
An easy way to copy and paste the chart is, from the Plots window in R: click on **Export/Copy** to **Clipboard**, then in the **Copy Plot to Clipboard** window, click on the **Copy Plot** button, and then paste into this document.
7. Enter a command that outputs a frequency table of the number of flights for each CARRIER.
8. Create a column chart of the number of flights per day of the week – that is, number of flights by day 1, 2, 3, 4, 5, 6, 7. Enter the command below.
	1. **NOTE**: If R hangs (doesn’t respond for a while), just sit tight. When the plot appears and isn’t what you expect – that is, isn’t a column chart-- try and figure out what you have to do to make things work correctly.
9. Paste the column chart of number of flights by day below. 
10. Create a histogram of the DISTANCE variable. Here no need to change any default settings in the histogram function.
11. Enter a command that will output the number of observations in each bin (and nothing else).
12. Create a boxplot of DISTANCE by CARRIER.
13. Interestingly, the boxplot you just created indicates that the airline with the smallest mean and median distance, and the smallest IQR, has what looks like two flights during the month that are the longest of all flights. Which airline is this, and can you make a guess as to why their data looks like this? No R command here, just your answers to these questions.
14. This question is more open-ended. The data set includes data about delays. Probably the most interesting information is arrival delay information (as opposed to departure delay information). There are three variables that relate to arrival delays: ARR_DELAY, ARR_DEL15, and ARR_DELAY_GROUP. Your task is to provide an analysis that provides at least one interesting insight as to arrival delays. Show the R commands you used, relevant output, and what your analysis shows.
