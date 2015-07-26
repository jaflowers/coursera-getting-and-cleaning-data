# Getting and Cleaning Data Course Project

**Introduction**
---------------------------------------------

This repository contains work for the course project in the Coursera course "Getting and Cleaning data," part of the Data Science specialization series.

The notes that follow are the steps to creating tidy data from a raw data set.

**About the Raw Data**
---------------------------------------------

The raw data represents data collected from accelerometers from the Samsung Galaxy S smartphone. A full description can be found at:
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
There are 561 features, unlabeled and located in the x_test.txt. 
The activity labels can be found in the y_test.text file. 
Subjects are found int he subject_test.txt file. 

This is true for the training data sets. 

**About the Script and the Tidy Dataset**
----------------------------------------------

The script created called run_analysis.R merges test and training sets together. To run this script, two prerequisites are required.
  1. The UCI HAR Dataset must be extracted
  2. The UCI Har Dataset must be avaible in the directory called "UCI Har Dataset"
  
Initially the training and testing sets are merged, then lables are added and only the columns that relate to the mean and standard deviation are kept. 

The script will result in a tidy data set that contains the means of all columns per test subject and per activity. 
The script saves the tidy dataset as a tab-delimited file called tidy_data.txt that can be found in the repository.

**About the Code Book**
-------------------------------------------
The CodeBook.md file explains the transformations performed and the resulting data and variables.


