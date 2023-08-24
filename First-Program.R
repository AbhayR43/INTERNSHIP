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
# Analysis for gene expression changes
# seperate treatment and control chips 
Treatment <- apply(expression_values[,c("GSM4843.CEL", "GSM4844.CEL")], 1, log)
Control <- apply(expression_values[,c("GSM4845.CEL", "GSM4846.CEL")], 1, log)
#Get back the pervious data shape using function transpose
Treatment <- t(Treatment)
Control <- t(Control)
rowMeans(Treatment)
# Average for Treatment and Control
Treatment_Mean <- rowMeans(Treatment)
Control_Mean <- rowMeans(Control)
#comparing treatment and control samples to check the up-regulated and down-regulated genes
BIOMARKER gene signature
Fold Chain Anaylsis
Fold-Change <- Treatment - Control
Treatment/control
Fold_change <- Treatment-Control
Fold_change <- Treatment_Mean-Control_Mean
#Up-Regulated Genes > +1.5
#Down- Regulated Genes > -1.5
