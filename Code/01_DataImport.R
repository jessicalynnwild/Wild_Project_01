##############################################################################
### file: 01_DataImport
### authors: Jess Wild
### creation date: 8/6/20
### description: Data import and manipulation
############################################################################## 

#set project folder as working directory
setwd("C:/Users/jessi/Desktop/CU Denver Biostat PhD/6621/HW/HW 1/Wild_Project_01")

#import the raw data
dat <- read.csv('./DataRaw/titanic.csv')

#correct class variable label (read in incorrectly from the csv file as "ï..Class")
colnames(dat)[1] <- 'Class'

#save modified dataset
write.csv(dat, './Data/titanic_modified.csv')
