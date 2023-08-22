#Author: Raheja, Abhay, Date: 08/08/2023, Purpose: R practice 

# calculate sum of 2 numbers: 10, 15 
# calculate division of 2 numbers: 1000, 10
# calculate subtraction of 2 numbers: 700000000, 7
# calculate multiplication of 2 numbers: 191919, 8

#Read the Affymetrix data in R
library(affy)
# Set the working directory

setwd("C:/Users/abhay/Downloads/GSE344_RAW")
#Read the Data itself 
data <-ReadAffy()

# Visualize read datset
boxplot(data)
 
# pre Processing Dataset: Naturalization of Data
data_normalized <- rma(data)

#Creating a table with samples and expression values
expression_values <- exprs(data_normalized)
#Creat a box to check 
boxplot(expression_values)