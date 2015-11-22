---
title: "Codebook"
author: "Evan Drake"
date: "11/22/2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
This project will take a subset of the UCI HAR data, combine the test and train datasets, run a summary of the data by subject and activity and produce two txt files as output.

##Study design and data processing

###Collection of the raw data
Data was downloaded from UCI using the URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
Data was unzipped creating the 'UCI HAR Dataset' directory

##Creating the tidy datafile

###Guide to create the tidy data file
1. download the data into your desired working directory
2. unzip file
3. open R and set working directory
4. run command 'source("run_analysis.R)'

###Cleaning of the data
The 'run_analysis.R' code will gather data from the UCI HAR dataset and produce two txt files. 
Two datasets, test and train, are gathered into one table named 'data_all'. 
The 'data_all' table only contains variables relating to std dev and mean from the UCI HAR dataset. 
A summary is taken by subject and activity and written out into summary_means by taking the mean of each variable.
 

##Description of the variables in the tiny_data.txt file
General description of the files:
 - Data_all is a 10,299 by 89 data frame
 - Summary_means is a 180 by 88 data frame
 - Data contains various standard deviations and means from the Human Activity Research dataset. This dataset was created by measuring 30 participants perform 6 tasks while wearing a smartphone to collect gyroscopic data.
 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
 - A full description of the dataset is in the file 'UCI HAR Dataset/README.txt'
 
 ###There are 4 elements to each variable name
 1. "t" or "f" prefix which denotes whether or not variable is time series or frequency domain
 2. "Body" or "Gravity" to denote the source of the accelaration signal
 3. "Acc" or "Gyro" to denote the source of the signal from either an acceleramete or gyroscope
 4. "Jerk" or "Mag"
 
 - Variables present in the dataset

"dataset"
"subject"
"activity"
"tBodyAcc.std.X"
"tBodyAcc.std.Y"
"tBodyAcc.std.Z"
"tGravityAcc.std.X"
"tGravityAcc.std.Y"
"tGravityAcc.std.Z"
"tBodyAccJerk.std.X"
"tBodyAccJerk.std.Y"
"tBodyAccJerk.std.Z"
"tBodyGyro.std.X"
"tBodyGyro.std.Y"
"tBodyGyro.std.Z"
"tBodyGyroJerk.std.X"
"tBodyGyroJerk.std.Y"
"tBodyGyroJerk.std.Z"
"tBodyAccMag.std"
"tGravityAccMag.std"
"tBodyAccJerkMag.std"
"tBodyGyroMag.std"
"tBodyGyroJerkMag.std"
"fBodyAcc.std.X"
"fBodyAcc.std.Y"
"fBodyAcc.std.Z"
"fBodyAccJerk.std.X"
"fBodyAccJerk.std.Y"
"fBodyAccJerk.std.Z"
"fBodyGyro.std.X"
"fBodyGyro.std.Y"
"fBodyGyro.std.Z"
"fBodyAccMag.std"
"fBodyBodyAccJerkMag.std"
"fBodyBodyGyroMag.std"
"fBodyBodyGyroJerkMag.std"
"tBodyAcc.mean.X"
"tBodyAcc.mean.Y"
"tBodyAcc.mean.Z"
"tGravityAcc.mean.X"
"tGravityAcc.mean.Y"
"tGravityAcc.mean.Z"
"tBodyAccJerk.mean.X"
"tBodyAccJerk.mean.Y"
"tBodyAccJerk.mean.Z"
"tBodyGyro.mean.X"
"tBodyGyro.mean.Y"
"tBodyGyro.mean.Z"
"tBodyGyroJerk.mean.X"
"tBodyGyroJerk.mean.Y"
"tBodyGyroJerk.mean.Z"
"tBodyAccMag.mean"
"tGravityAccMag.mean"
"tBodyAccJerkMag.mean"
"tBodyGyroMag.mean"
"tBodyGyroJerkMag.mean"
"fBodyAcc.mean.X"
"fBodyAcc.mean.Y"
"fBodyAcc.mean.Z"
"fBodyAcc.meanFreq.X"
"fBodyAcc.meanFreq.Y"
"fBodyAcc.meanFreq.Z"
"fBodyAccJerk.mean.X"
"fBodyAccJerk.mean.Y"
"fBodyAccJerk.mean.Z"
"fBodyAccJerk.meanFreq.X"
"fBodyAccJerk.meanFreq.Y"
"fBodyAccJerk.meanFreq.Z"
"fBodyGyro.mean.X"
"fBodyGyro.mean.Y"
"fBodyGyro.mean.Z"
"fBodyGyro.meanFreq.X"
"fBodyGyro.meanFreq.Y"
"fBodyGyro.meanFreq.Z"
"fBodyAccMag.mean"
"fBodyAccMag.meanFreq"
"fBodyBodyAccJerkMag.mean"
"fBodyBodyAccJerkMag.meanFreq"
"fBodyBodyGyroMag.mean"
"fBodyBodyGyroMag.meanFreq"
"fBodyBodyGyroJerkMag.mean"
"fBodyBodyGyroJerkMag.meanFreq"
"angle.tBodyAccMean.gravity."
"angle.tBodyAccJerkMeangravityMean."
"angle.tBodyGyroMean.gravityMean."
"angle.tBodyGyroJerkMean.gravityMean."
"angle.X.gravityMean."
"angle.Y.gravityMean."
"angle.Z.gravityMean."

### Variable_num	1
####Name:	dataset
class:	char
units:	NA
### Variable_num	2
####Name:	subject
class:	int
units:	NA
### Variable_num	3
####Name:	activity
class:	char
units:	NA
### Variable_num	4
####Name:	tBodyAcc.std.X
class:	int
units:	Standard Deviation
### Variable_num	5
####Name:	tBodyAcc.std.Y
class:	int
units:	Standard Deviation
### Variable_num	6
####Name:	tBodyAcc.std.Z
class:	int
units:	Standard Deviation
### Variable_num	7
####Name:	tGravityAcc.std.X
class:	int
units:	Standard Deviation
### Variable_num	8
####Name:	tGravityAcc.std.Y
class:	int
units:	Standard Deviation
### Variable_num	9
####Name:	tGravityAcc.std.Z
class:	int
units:	Standard Deviation
### Variable_num	10
####Name:	tBodyAccJerk.std.X
class:	int
units:	Standard Deviation
### Variable_num	11
####Name:	tBodyAccJerk.std.Y
class:	int
units:	Standard Deviation
### Variable_num	12
####Name:	tBodyAccJerk.std.Z
class:	int
units:	Standard Deviation
### Variable_num	13
####Name:	tBodyGyro.std.X
class:	int
units:	Standard Deviation
### Variable_num	14
####Name:	tBodyGyro.std.Y
class:	int
units:	Standard Deviation
### Variable_num	15
####Name:	tBodyGyro.std.Z
class:	int
units:	Standard Deviation
### Variable_num	16
####Name:	tBodyGyroJerk.std.X
class:	int
units:	Standard Deviation
### Variable_num	17
####Name:	tBodyGyroJerk.std.Y
class:	int
units:	Standard Deviation
### Variable_num	18
####Name:	tBodyGyroJerk.std.Z
class:	int
units:	Standard Deviation
### Variable_num	19
####Name:	tBodyAccMag.std
class:	int
units:	Standard Deviation
### Variable_num	20
####Name:	tGravityAccMag.std
class:	int
units:	Standard Deviation
### Variable_num	21
####Name:	tBodyAccJerkMag.std
class:	int
units:	Standard Deviation
### Variable_num	22
####Name:	tBodyGyroMag.std
class:	int
units:	Standard Deviation
### Variable_num	23
####Name:	tBodyGyroJerkMag.std
class:	int
units:	Standard Deviation
### Variable_num	24
####Name:	fBodyAcc.std.X
class:	int
units:	Standard Deviation
### Variable_num	25
####Name:	fBodyAcc.std.Y
class:	int
units:	Standard Deviation
### Variable_num	26
####Name:	fBodyAcc.std.Z
class:	int
units:	Standard Deviation
### Variable_num	27
####Name:	fBodyAccJerk.std.X
class:	int
units:	Standard Deviation
### Variable_num	28
####Name:	fBodyAccJerk.std.Y
class:	int
units:	Standard Deviation
### Variable_num	29
####Name:	fBodyAccJerk.std.Z
class:	int
units:	Standard Deviation
### Variable_num	30
####Name:	fBodyGyro.std.X
class:	int
units:	Standard Deviation
### Variable_num	31
####Name:	fBodyGyro.std.Y
class:	int
units:	Standard Deviation
### Variable_num	32
####Name:	fBodyGyro.std.Z
class:	int
units:	Standard Deviation
### Variable_num	33
####Name:	fBodyAccMag.std
class:	int
units:	Standard Deviation
### Variable_num	34
####Name:	fBodyBodyAccJerkMag.std
class:	int
units:	Standard Deviation
### Variable_num	35
####Name:	fBodyBodyGyroMag.std
class:	int
units:	Standard Deviation
### Variable_num	36
####Name:	fBodyBodyGyroJerkMag.std
class:	int
units:	Standard Deviation
### Variable_num	37
####Name:	tBodyAcc.mean.X
class:	int
units:	Mean
### Variable_num	38
####Name:	tBodyAcc.mean.Y
class:	int
units:	Mean
### Variable_num	39
####Name:	tBodyAcc.mean.Z
class:	int
units:	Mean
### Variable_num	40
####Name:	tGravityAcc.mean.X
class:	int
units:	Mean
### Variable_num	41
####Name:	tGravityAcc.mean.Y
class:	int
units:	Mean
### Variable_num	42
####Name:	tGravityAcc.mean.Z
class:	int
units:	Mean
### Variable_num	43
####Name:	tBodyAccJerk.mean.X
class:	int
units:	Mean
### Variable_num	44
####Name:	tBodyAccJerk.mean.Y
class:	int
units:	Mean
### Variable_num	45
####Name:	tBodyAccJerk.mean.Z
class:	int
units:	Mean
### Variable_num	46
####Name:	tBodyGyro.mean.X
class:	int
units:	Mean
### Variable_num	47
####Name:	tBodyGyro.mean.Y
class:	int
units:	Mean
### Variable_num	48
####Name:	tBodyGyro.mean.Z
class:	int
units:	Mean
### Variable_num	49
####Name:	tBodyGyroJerk.mean.X
class:	int
units:	Mean
### Variable_num	50
####Name:	tBodyGyroJerk.mean.Y
class:	int
units:	Mean
### Variable_num	51
####Name:	tBodyGyroJerk.mean.Z
class:	int
units:	Mean
### Variable_num	52
####Name:	tBodyAccMag.mean
class:	int
units:	Mean
### Variable_num	53
####Name:	tGravityAccMag.mean
class:	int
units:	Mean
### Variable_num	54
####Name:	tBodyAccJerkMag.mean
class:	int
units:	Mean
### Variable_num	55
####Name:	tBodyGyroMag.mean
class:	int
units:	Mean
### Variable_num	56
####Name:	tBodyGyroJerkMag.mean
class:	int
units:	Mean
### Variable_num	57
####Name:	fBodyAcc.mean.X
class:	int
units:	Mean
### Variable_num	58
####Name:	fBodyAcc.mean.Y
class:	int
units:	Mean
### Variable_num	59
####Name:	fBodyAcc.mean.Z
class:	int
units:	Mean
### Variable_num	60
####Name:	fBodyAcc.meanFreq.X
class:	int
units:	Mean
### Variable_num	61
####Name:	fBodyAcc.meanFreq.Y
class:	int
units:	Mean
### Variable_num	62
####Name:	fBodyAcc.meanFreq.Z
class:	int
units:	Mean
### Variable_num	63
####Name:	fBodyAccJerk.mean.X
class:	int
units:	Mean
### Variable_num	64
####Name:	fBodyAccJerk.mean.Y
class:	int
units:	Mean
### Variable_num	65
####Name:	fBodyAccJerk.mean.Z
class:	int
units:	Mean
### Variable_num	66
####Name:	fBodyAccJerk.meanFreq.X
class:	int
units:	Mean
### Variable_num	67
####Name:	fBodyAccJerk.meanFreq.Y
class:	int
units:	Mean
### Variable_num	68
####Name:	fBodyAccJerk.meanFreq.Z
class:	int
units:	Mean
### Variable_num	69
####Name:	fBodyGyro.mean.X
class:	int
units:	Mean
### Variable_num	70
####Name:	fBodyGyro.mean.Y
class:	int
units:	Mean
### Variable_num	71
####Name:	fBodyGyro.mean.Z
class:	int
units:	Mean
### Variable_num	72
####Name:	fBodyGyro.meanFreq.X
class:	int
units:	Mean
### Variable_num	73
####Name:	fBodyGyro.meanFreq.Y
class:	int
units:	Mean
### Variable_num	74
####Name:	fBodyGyro.meanFreq.Z
class:	int
units:	Mean
### Variable_num	75
####Name:	fBodyAccMag.mean
class:	int
units:	Mean
### Variable_num	76
####Name:	fBodyAccMag.meanFreq
class:	int
units:	Mean
### Variable_num	77
####Name:	fBodyBodyAccJerkMag.mean
class:	int
units:	Mean
### Variable_num	78
####Name:	fBodyBodyAccJerkMag.meanFreq
class:	int
units:	Mean
### Variable_num	79
####Name:	fBodyBodyGyroMag.mean
class:	int
units:	Mean
### Variable_num	80
####Name:	fBodyBodyGyroMag.meanFreq
class:	int
units:	Mean
### Variable_num	81
####Name:	fBodyBodyGyroJerkMag.mean
class:	int
units:	Mean
### Variable_num	82
####Name:	fBodyBodyGyroJerkMag.meanFreq
class:	int
units:	Mean
### Variable_num	83
####Name:	angle.tBodyAccMean.gravity.
class:	int
units:	Mean
### Variable_num	84
####Name:	angle.tBodyAccJerkMeangravityMean.
class:	int
units:	Mean
### Variable_num	85
####Name:	angle.tBodyGyroMean.gravityMean.
class:	int
units:	Mean
### Variable_num	86
####Name:	angle.tBodyGyroJerkMean.gravityMean.
class:	int
units:	Mean
### Variable_num	87
####Name:	angle.X.gravityMean.
class:	int
units:	Mean
### Variable_num	88
####Name:	angle.Y.gravityMean.
class:	int
units:	Mean
### Variable_num	89
####Name:	angle.Z.gravityMean.
class:	int
units:	Mean

##Sources
Getting and Cleaning Data: https://class.coursera.org/getdata-034/human_grading/view/courses/975118/assessments/3/submissions
UCI Machine Learning: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Example Codebook: https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41
Project Advice: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/