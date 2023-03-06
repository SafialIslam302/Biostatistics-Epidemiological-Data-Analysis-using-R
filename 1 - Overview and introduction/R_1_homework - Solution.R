####################################################################################
### Homework 1 
###
### Task: Download this R file, save it on your computer, and perform all the below tasks by inserting your answer in comments or R code below. After you are done, submit this file with your solutions on Moodle.
####################################################################################

## Exercise 1
## Save the mtcars data frame as an R data frame on your desktop. After saving it, load it again in RStudio.

#Solution:
data.frame <- mtcars
save(data.frame, file = "C:/Users/SAFIAL ISLAM AYON/Desktop/mtcars.rdata")
load(file = "mtcars.rdata")

## Exercise 2
## Find out some information about the mtcars data frame, for example what the different variable names mean.

#Solution:
?mtcars

#[, 1]	mpg	Miles/(US) gallon
#[, 2]	cyl	Number of cylinders
#[, 3]	disp	Displacement (cu.in.)
#[, 4]	hp	Gross horsepower
#[, 5]	drat	Rear axle ratio
#[, 6]	wt	Weight (1000 lbs)
#[, 7]	qsec	1/4 mile time
#[, 8]	vs	Engine (0 = V-shaped, 1 = straight)
#[, 9]	am	Transmission (0 = automatic, 1 = manual)
#[,10]	gear	Number of forward gears
#[,11]	carb	Number of carburetors

## Exercise 3
## Use the help functions to find out, what the option 'main' means in the 'hist' function. Explain what it can be used for in one sentence, and try to use it in an example.

#Solution:
?hist
# "main" specify the title of the histogram.

## Exercise 4
## Install any R package of your choice and try to find out what the functions in the R package can be used for.

#Solution:
install.packages("readxl")
#The "readxl" package makes it easy to get data out of Excel and into R

## Exercise 5: import Excel file.
## Create your own dataset of a fictional study where you record age, sex, and height of 5 friends in an Excel file. Create an Excel file with this information, save the file on your laptop, import the file into RStudio, and save the dataframe as an R object (.RData file).

#Solution:
# Dataset looks like this
#age	sex	height
#20 	M	  140
#25	  F	  150
#30	  M	  160
#35	  F	  170
#40	  M	  180

#install.packages("devtools")
#devtools::install_github("r-lib/pillar")
library(readxl)
data.set <- read_excel("D:/Potsdam/Winter 2021-2021/Biostatistics & Epidemiological Data Analysis using R/1 - Overview and introduction/Dataset.xlsx")
head(data.set)
save(data.set, file = "D:/Potsdam/Winter 2021-2021/Biostatistics & Epidemiological Data Analysis using R/1 - Overview and introduction/Dataset.RData")

## Exercise 6 (optional)
## Use the read.csv() and the read_csv() functions to import the Pima diabetes csv dataset, and compare the datasets that are created in R. Are there differences, are there big differences, what are the differences?

#Solution:
install.packages("readr")
library(readr)

dat <- read.csv(file = url("https://www.dropbox.com/s/tqrauwuxyi03kee/Pima_diabetes.csv?dl=1"))
dat2 <- readr::read_csv(file = url("https://www.dropbox.com/s/tqrauwuxyi03kee/Pima_diabetes.csv?dl=1"))
head(dat)
head(dat2)

str(dat) #here the variables are int or num
str(dat2) #here all the variables are num

object.size(dat) # the size of "dat" dataframe is 35640 bytes
object.size(dat2) # the size of "dat2" dataframe is 63096 bytes

## Exercise 7: Import and check data (optional)
## Download the NoShow csv data (KaggleV2-May-2016(1).csv) and import it into R. Now check the data, (i) whether all variables have been imported correctly and (ii) if all values in the dataset make sense and seem correct.

#Solution:
data.NoShow <- readr::read_csv(file = "D:/Potsdam/Winter 2021-2021/Biostatistics & Epidemiological Data Analysis using R/1 - Overview and introduction/KaggleV2-May-2016.csv")
head(data.NoShow)

