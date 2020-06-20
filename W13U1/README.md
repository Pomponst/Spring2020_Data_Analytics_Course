# Assignment Week 13
*Overview*<br>
There have been many studies documenting that the average global temperature has been increasing over the last century. The consequences of a continued rise in global temperature will be dire. Rising sea levels and an increased frequency of extreme weather events will affect billions of people.<br>
In this problem, we will attempt to study the relationship between average global temperature and several other factors.<br>
The file **climate_change.csv** contains climate data from May 1983 to December 2008. The available variables include:<br>
* *Year*: the observation year.
*	*Month*: the observation month.
*	*Temp*: the difference in degrees Celsius between the average global temperature in that period and a reference value. This data comes from the <a href = http://www.cru.uea.ac.uk/cru/data/temperature/>Climatic Research Unit at the University of East Anglia</a>.
*	*CO2, N2O, CH4, CFC.11, CFC.12*: atmospheric concentrations of carbon dioxide (CO2), nitrous oxide (N2O), methane  (CH4), trichlorofluoromethane (CCl3F; commonly referred to as CFC-11) and dichlorodifluoromethane (CCl2F2; commonly referred to as CFC-12), respectively. This data comes from the <a href = http://www.esrl.noaa.gov/gmd/ccgg/data-products.html>ESRL/NOAA Global Monitoring Division</a>.
	* CO2, N2O and CH4 are expressed in ppmv (parts per million by volume  -- i.e., 397 ppmv of CO2 means that CO2 constitutes 397 millionths of the total volume of the atmosphere)
	*	CFC.11 and CFC.12 are expressed in ppbv (parts per billion by volume). 
*	*Aerosols*: the mean stratospheric aerosol optical depth at 550 nm. This variable is linked to volcanoes, as volcanic eruptions result in new particles being added to the atmosphere, which affect how much of the sun's energy is reflected back into space. This data is from the <a href = http://data.giss.nasa.gov/modelforce/strataer/>Godard Institute for Space Studies at NASA</a>.
*	*TSI*: the total solar irradiance (TSI) in W/m2 (the rate at which the sun's energy is deposited per unit area). Due to sunspots and other solar phenomena, the amount of energy that is given off by the sun varies substantially with time. This data is from the <a href = http://solarisheppa.geomar.de/solarisheppa/cmip5>SOLARIS-HEPPA project website</a>.
*	*MEI*: multivariate El Nino Southern Oscillation index (MEI), a measure of the strength of the <a href = http://en.wikipedia.org/wiki/El_nino>El Nino/La Nina-Southern Oscillation</a> (a weather effect in the Pacific Ocean that affects global temperatures). This data comes from the <a href = http://www.esrl.noaa.gov/psd/enso/mei/table.html>ESRL/NOAA Physical Sciences Division</a>.

*Creating the First Model*
1. We are interested in how changes in these variables affect future temperatures, as well as how well these variables explain temperature changes so far. To do this, first read the dataset **climate_change.csv** into R.
2. Then, split the data into a training set, consisting of all the observations up to and including 2006, and a testing set consisting of the remaining years.
3. Next, build a linear regression model to predict the dependent variable Temp, using MEI, CO2, CH4, N2O, CFC.11, CFC.12, TSI, and Aerosols as independent variables (Year and Month should NOT be used in the model). Use the training set to build the model, and provide the summary of the regression model here.

*Understanding the Model*<br>
Current scientific opinion is that nitrous oxide and CFC-11 are greenhouse gases: gases that are able to trap heat from the sun and contribute to the heating of the Earth. However, the regression coefficients of both the N2O and CFC-11 variables are negative, indicating that increasing atmospheric concentrations of either of these two compounds is associated with lower global temperatures.
1. Compute the correlations between all the variables in the training set. Which of the independent variables is N2O highly correlated with (absolute correlation greater than 0.7)?

*Simplifying the Model*
1. Given that the correlations are so high, let us focus on the N2O variable and build a model with only MEI, TSI, Aerosols and N2O as independent variables. Remember to use the training set to build the model. Provide the summary below.

*Automatically Building the Model*<br>
We have many variables in this problem, and as we have seen above, dropping some from the model does not decrease model quality. R provides a function, step, that will automate the procedure of trying different combinations of variables to find a good compromise of model simplicity and R2. This trade-off is formalized by the Akaike information criterion (AIC) - it can be informally thought of as the quality of the model with a penalty for the number of variables in the model.

The step function has one argument - the name of the initial model. It returns a simplified model. Use the step function in R to derive a new model, with the full model as the initial model (HINT: If your initial full model was called "climateLM", you could create a new model with the step function by typing step(climateLM). Be sure to save your new model to a variable name so that you can look at the summary. For more information about the step function, type ?step at the R prompt.)
1. Provide the summary for the linear regression model that results from calling step().

*Testing on Unseen Data*
1. How good is your second model? Make predictions using the test data, and run the usual summary measures on the results.
2. Do the same using the model produced from the step function.
