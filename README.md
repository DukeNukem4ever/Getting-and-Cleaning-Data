# Getting-and-Cleaning-Data

# Content:
1) README.md -- this file
2) CodeBook.md -- variables
3) run_analysis.R -- R script which gives the main tidy data set
4) final_set.txt -- an independent tidy data set with the average of each variable for each activity and each subject

# Description of the experiment:
The experiment was carried out with a group of 30 volunteers with their age varying between 19 and 48 years. Each person was required to perform six activities (simply walking (WALKING), walking upstairs (WALKING_UPSTAIRS), walking downstairs (WALKING_DOWNSTAIRS), sitting (SITTING), standing (STANDING) and laying (LAYING)) while also wearing a smartphone Samsung Galaxy SII on the waist. With the help of its embedded accelerometer and gyroscope, researchers behind the experiment captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Each record contains:
1) Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
2) Triaxial Angular velocity from the gyroscope.
3) A 561-feature vector with time and frequency domain variables.
4) Its activity label.
5) An identifier of the subject who carried out the experiment.

# Features

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Also, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

# Labels

1) WALKING
2) WALKING_UPSTAIRS
3) WALKING_DOWNSTAIRS
4) SITTING
5) STANDING
6) LAYING
