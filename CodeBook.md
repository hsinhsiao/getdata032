---
title: "Codebook for Getting and Cleaning Data project"
author: "hhlin02"
date: "2015/09/27"
output: "tiny_data.txt"
---

## Project Description
Get and clean data from UCI dataset

##Study design and data processing

###Collection of the raw data
Download from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Creating the tidy datafile

###Guide to create the tidy data file
in R, run: <br/>
  source(run_analysis.R) <br/>
Please check README.md for more detail.

###Cleaning of the data
Please check the comments in run_analysis.R

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dim: 181 lines with 68 variables, include a header in 1st line
 - The average of each variable of original features in the UCI dataset
   for each activity and each subject

From varialbe 3 to variable 68, their name are the same as the feature name 
in the UCI dataset, but the values are averaged by distinct Subject and Activity

'data.frame':	180 obs. of  68 variables:
 $ Subject                    : int  1 1 1 1 1 1 2 2 2 2 ... <br/>
 $ Activity                   : Factor w/ 6 levels "LAYING","SITTING",..: 4 6 5 2 3 1 4 6 5 2 ... <br/>
 $ tBodyAcc-mean()-X          : num  0.277 0.255 0.289 0.261 0.279 ... <br/>
 $ tBodyAcc-mean()-Y          : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ... <br/>
 $ tBodyAcc-mean()-Z          : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ... <br/>
 $ tBodyAcc-std()-X           : num  -0.284 -0.355 0.03 -0.977 -0.996 ... <br/>
 $ tBodyAcc-std()-Y           : num  0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ... <br/>
 $ tBodyAcc-std()-Z           : num  -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ... <br/>
 $ tGravityAcc-mean()-X       : num  0.935 0.893 0.932 0.832 0.943 ... <br/>
 $ tGravityAcc-mean()-Y       : num  -0.282 -0.362 -0.267 0.204 -0.273 ... <br/>
 $ tGravityAcc-mean()-Z       : num  -0.0681 -0.0754 -0.0621 0.332 0.0135 ... <br/>
 $ tGravityAcc-std()-X        : num  -0.977 -0.956 -0.951 -0.968 -0.994 ... <br/>
 $ tGravityAcc-std()-Y        : num  -0.971 -0.953 -0.937 -0.936 -0.981 ... <br/>
 $ tGravityAcc-std()-Z        : num  -0.948 -0.912 -0.896 -0.949 -0.976 ... <br/>
 $ tBodyAccJerk-mean()-X      : num  0.074 0.1014 0.0542 0.0775 0.0754 ... <br/>
 $ tBodyAccJerk-mean()-Y      : num  0.028272 0.019486 0.02965 -0.000619 0.007976 ... <br/>
 $ tBodyAccJerk-mean()-Z      : num  -0.00417 -0.04556 -0.01097 -0.00337 -0.00369 ... <br/>
 $ tBodyAccJerk-std()-X       : num  -0.1136 -0.4468 -0.0123 -0.9864 -0.9946 ... <br/>
 $ tBodyAccJerk-std()-Y       : num  0.067 -0.378 -0.102 -0.981 -0.986 ... <br/>
 $ tBodyAccJerk-std()-Z       : num  -0.503 -0.707 -0.346 -0.988 -0.992 ... <br/>
 $ tBodyGyro-mean()-X         : num  -0.0418 0.0505 -0.0351 -0.0454 -0.024 ... <br/>
 $ tBodyGyro-mean()-Y         : num  -0.0695 -0.1662 -0.0909 -0.0919 -0.0594 ... <br/>
 $ tBodyGyro-mean()-Z         : num  0.0849 0.0584 0.0901 0.0629 0.0748 ... <br/>
 $ tBodyGyro-std()-X          : num  -0.474 -0.545 -0.458 -0.977 -0.987 ... <br/>
 $ tBodyGyro-std()-Y          : num  -0.05461 0.00411 -0.12635 -0.96647 -0.98773 ... <br/>
 $ tBodyGyro-std()-Z          : num  -0.344 -0.507 -0.125 -0.941 -0.981 ... <br/>
 $ tBodyGyroJerk-mean()-X     : num  -0.09 -0.1222 -0.074 -0.0937 -0.0996 ... <br/>
 $ tBodyGyroJerk-mean()-Y     : num  -0.0398 -0.0421 -0.044 -0.0402 -0.0441 ... <br/>
 $ tBodyGyroJerk-mean()-Z     : num  -0.0461 -0.0407 -0.027 -0.0467 -0.049 ... <br/>
 $ tBodyGyroJerk-std()-X      : num  -0.207 -0.615 -0.487 -0.992 -0.993 ... <br/>
 $ tBodyGyroJerk-std()-Y      : num  -0.304 -0.602 -0.239 -0.99 -0.995 ... <br/>
 $ tBodyGyroJerk-std()-Z      : num  -0.404 -0.606 -0.269 -0.988 -0.992 ... <br/>
 $ tBodyAccMag-mean()         : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ... <br/>
 $ tBodyAccMag-std()          : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ... <br/>
 $ tGravityAccMag-mean()      : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ... <br/>
 $ tGravityAccMag-std()       : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ... <br/>
 $ tBodyAccJerkMag-mean()     : num  -0.1414 -0.4665 -0.0894 -0.9874 -0.9924 ... <br/>
 $ tBodyAccJerkMag-std()      : num  -0.0745 -0.479 -0.0258 -0.9841 -0.9931 ... <br/>
 $ tBodyGyroMag-mean()        : num  -0.161 -0.1267 -0.0757 -0.9309 -0.9765 ... <br/>
 $ tBodyGyroMag-std()         : num  -0.187 -0.149 -0.226 -0.935 -0.979 ... <br/>
 $ tBodyGyroJerkMag-mean()    : num  -0.299 -0.595 -0.295 -0.992 -0.995 ... <br/>
 $ tBodyGyroJerkMag-std()     : num  -0.325 -0.649 -0.307 -0.988 -0.995 ... <br/>
 $ fBodyAcc-mean()-X          : num  -0.2028 -0.4043 0.0382 -0.9796 -0.9952 ... <br/>
 $ fBodyAcc-mean()-Y          : num  0.08971 -0.19098 0.00155 -0.94408 -0.97707 ... <br/>
 $ fBodyAcc-mean()-Z          : num  -0.332 -0.433 -0.226 -0.959 -0.985 ... <br/>
 $ fBodyAcc-std()-X           : num  -0.3191 -0.3374 0.0243 -0.9764 -0.996 ... <br/>
 $ fBodyAcc-std()-Y           : num  0.056 0.0218 -0.113 -0.9173 -0.9723 ... <br/>
 $ fBodyAcc-std()-Z           : num  -0.28 0.086 -0.298 -0.934 -0.978 ... <br/>
 $ fBodyAccJerk-mean()-X      : num  -0.1705 -0.4799 -0.0277 -0.9866 -0.9946 ... <br/>
 $ fBodyAccJerk-mean()-Y      : num  -0.0352 -0.4134 -0.1287 -0.9816 -0.9854 ... <br/>
 $ fBodyAccJerk-mean()-Z      : num  -0.469 -0.685 -0.288 -0.986 -0.991 ... <br/>
 $ fBodyAccJerk-std()-X       : num  -0.1336 -0.4619 -0.0863 -0.9875 -0.9951 ... <br/>
 $ fBodyAccJerk-std()-Y       : num  0.107 -0.382 -0.135 -0.983 -0.987 ... <br/>
 $ fBodyAccJerk-std()-Z       : num  -0.535 -0.726 -0.402 -0.988 -0.992 ... <br/>
 $ fBodyGyro-mean()-X         : num  -0.339 -0.493 -0.352 -0.976 -0.986 ... <br/>
 $ fBodyGyro-mean()-Y         : num  -0.1031 -0.3195 -0.0557 -0.9758 -0.989 ... <br/>
 $ fBodyGyro-mean()-Z         : num  -0.2559 -0.4536 -0.0319 -0.9513 -0.9808 ... <br/>
 $ fBodyGyro-std()-X          : num  -0.517 -0.566 -0.495 -0.978 -0.987 ... <br/>
 $ fBodyGyro-std()-Y          : num  -0.0335 0.1515 -0.1814 -0.9623 -0.9871 ... <br/>
 $ fBodyGyro-std()-Z          : num  -0.437 -0.572 -0.238 -0.944 -0.982 ... <br/>
 $ fBodyAccMag-mean()         : num  -0.1286 -0.3524 0.0966 -0.9478 -0.9854 ... <br/>
 $ fBodyAccMag-std()          : num  -0.398 -0.416 -0.187 -0.928 -0.982 ... <br/>
 $ fBodyBodyAccJerkMag-mean() : num  -0.0571 -0.4427 0.0262 -0.9853 -0.9925 ... <br/>
 $ fBodyBodyAccJerkMag-std()  : num  -0.103 -0.533 -0.104 -0.982 -0.993 ... <br/>
 $ fBodyBodyGyroMag-mean()    : num  -0.199 -0.326 -0.186 -0.958 -0.985 ... <br/>
 $ fBodyBodyGyroMag-std()     : num  -0.321 -0.183 -0.398 -0.932 -0.978 ... <br/>
 $ fBodyBodyGyroJerkMag-mean(): num  -0.319 -0.635 -0.282 -0.99 -0.995 ... <br/>
 $ fBodyBodyGyroJerkMag-std() : num  -0.382 -0.694 -0.392 -0.987 -0.995 ... <br/>