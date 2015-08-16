CodeBook
======================
The data used was collected by UCI. It contains data collected from accelerometers from Samsung Galaxy S smartphones. The data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

#Features
List of all the features contained in the tidy dataset:
'-mean/std' is used to denote whether it is the mean or standard deviation measurement.
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-mean/std-XYZ
- tGravityAcc-mean/std-XYZ
- tBodyAccJerk-mean/std-XYZ
- tBodyGyro-mean/std-XYZ
- tBodyGyroJerk-mean/std-XYZ
- tBodyAccMag-mean/std
- tGravityAccMag-mean/std
- tBodyAccJerkMag-mean/std
- tBodyGyroMag-mean/std
- tBodyGyroJerkMag-mean/std
- fBodyAcc-mean/std-XYZ
- fBodyAccJerk-mean/std-XYZ
- fBodyGyro-mean/std-XYZ
- fBodyAccMag-mean/std
- fBodyAccJerkMag-mean/std
- fBodyGyroMag-mean/std
- fBodyGyroJerkMag-mean/std

#Details
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

#Method
The code to obtain the tidy dataset is contained in run_analysis.R. To obtain the tidy dataset the data was loaded in from:

- train/X_train.txt
- train/subj_train.txt
- train/y_train.txt
- test/X_test.txt
- test/subj_test.txt
- test/y_test.txt

The data was then merged to create one dataset. Then the columns containing the mean or standard deviation were extracted. The columns were the converted to lower case and stripped of parantheses. The activity column was also converted to its appropriate activity labels. Finally, a new dataset was created to calculate the average of each feature by subject and activity.
