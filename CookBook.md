CodeBook for Tidy Dataset
-----------------------------------------
Data Source
-----------------------------------------
This dataset represents data collected from the accelerometers in the Samsung Galaxy S smartphone.

This dataset is availibe at this link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

And a full description of the dataste can be found:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection
-------------------------------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XY. 

The features were selected per the requirements of the Getting and Cleaning Data assigment that states "Extracts only the measurements on the mean and standard deviation for each measurement." All variables having to do with mean or standard deviation were included.

For the derived dataset, these signals were used to estimate variables of the feature vector for each pattern:

In this dataset, '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

- mean( ): Mean value
- std( ): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

Other estimates have been removed for the purpose of this excercise.

**Note:** features are normalized and bounded within [-1,1].

The resulting variable names are of the following form: tbodyaccmeanx, which means the mean value of tBodyAcc-XYZ.



