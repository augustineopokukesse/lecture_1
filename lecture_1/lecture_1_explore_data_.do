***************************************************************************
*Project: Explore Data on Closing Prices on the S&P500
*Author: Lecturer
*Date: August 17th 2026
***************************************************************************


*1. Clear the workscreen and workspace
cls
clear all 

*2. Load the Data 
sysuse sp500, clear


************************************************************
*Learn as much as you can about the expenditure variable
*************************************************************

*3. Find out what  the expenditure variable measures and how it is stored

describe close

*4. What values does it take?

list close in 1/25
summarize close
summarize close, detail

*5 is it categorical or numerical and how many observations are missing?

codebook close

*6 What is its distribution

histogram close, xlabel(0(5)80) frequency normal
kdensity close, normal

*7 Are there unusual values?

graph box close, marker(1, mlabel(date) mlabsize(small))
twoway line close date, title(Closing Price Per Day)



exit