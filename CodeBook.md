CodeBook for the tidy dataset
=============================

Data source
-----------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection 
-----------------
Initial dataset has the following features description:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The assignment explicitly states "Extracts only the measurements on the mean and standard deviation for each measurement."

In short, for this derived dataset, these signals were used to estimate variables of the feature vector for each pattern:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

where '-XYZ' indicates 3 signals respectively in the X, Y and Z directions.

The set of variables that were estimated (and kept for this assignment) from these signals are: 

* mean(): Mean value
* std(): Standard deviation

Selection was made based on the names in intial dataset. All variables, which contain "-mean" or "-std" part in their names were kept, all others were removed.

Result Set
-----------
The resulting variable names are were clear from special characters like "-" or "()" and in a result set they have folloving name format: "tbodyaccmeanx". It consists of name of observation in lower case "tbodyacc", variable name "mean" and axis "x". All variables in new dataset follow this rule, except two additional variables "activity" and "subject".

Activity column contains the name of activity name, during which measurement were done.
Subject column contains the identifier (id) of the person, who performed the activity.

This dataset is called "allData"" and is writen to the path onto a file result.txt

Additional tidy dataset which consists of the mean variable values for each subject for each activity also produced.
This dataset is called "tidy"" and is writen to the path onto a file tidy.txt


