###Codebook

####Data

The data here comes from the Human Activity Recognition Using Smartphones Data Set collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto. It is described in more detail at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones as well as in files included in the dataset itself at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . 

The original Human Activity Recognition Using Smartphones Data Set consists of numerous descriptive statistics computed over smartphone accelerometer and gyroscope measurements, recorded while study participants (subjects) with smartphones were performing various activities (sitting, walking, etc). These statistics include means and standard deviations. The current dataset contains average values of those means and standard deviations for each {subject, activity} combination.

####Variables

*subject*: Number of the study participant from whom measurements were recorded.

*activity*: Activity performed by the study participant. Possible values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING.

The remaining variables are derived from variables described by Reyes-Ortiz et al. in the Human Activity Recognition Using Smartphones Data Set as follows:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."

To give the variables clearer names, the time domain signals (with prefix t in the original dataset) are now prefixed "TimeDomain", and frequency domain signals (with prefix f in the original dataset) are prefixed "FrequencyDomain". Similarly, accelerometer measurements and gyroscope measurements are appropriately labeled.

*Note that each variable in the current dataset represents a mean over {subject, activity} pairs.* For example, the variable TimeDomainBodyAccelerometer_StandardDeviation_X was computed by extracting the variable tBodyAcc-std()-X from the original dataset, and then summarizing it by computing its mean over all {subject, activity} pairs.

#####List of remaining variables

*TimeDomainBodyAccelerometer_Mean_X*

*TimeDomainBodyAccelerometer_Mean_Y*

*TimeDomainBodyAccelerometer_Mean_Z*

*TimeDomainBodyAccelerometer_StandardDeviation_X*

*TimeDomainBodyAccelerometer_StandardDeviation_Y*

*TimeDomainBodyAccelerometer_StandardDeviation_Z*

*TimeDomainGravityAccelerometer_Mean_X*

*TimeDomainGravityAccelerometer_Mean_Y*

*TimeDomainGravityAccelerometer_Mean_Z*

*TimeDomainGravityAccelerometer_StandardDeviation_X*

*TimeDomainGravityAccelerometer_StandardDeviation_Y*

*TimeDomainGravityAccelerometer_StandardDeviation_Z*

*TimeDomainBodyAccelerometerJerk_Mean_X*

*TimeDomainBodyAccelerometerJerk_Mean_Y*

*TimeDomainBodyAccelerometerJerk_Mean_Z*

*TimeDomainBodyAccelerometerJerk_StandardDeviation_X*

*TimeDomainBodyAccelerometerJerk_StandardDeviation_Y*

*TimeDomainBodyAccelerometerJerk_StandardDeviation_Z*

*TimeDomainBodyGyroscope_Mean_X*

*TimeDomainBodyGyroscope_Mean_Y*

*TimeDomainBodyGyroscope_Mean_Z*

*TimeDomainBodyGyroscope_StandardDeviation_X*

*TimeDomainBodyGyroscope_StandardDeviation_Y*

*TimeDomainBodyGyroscope_StandardDeviation_Z*

*TimeDomainBodyGyroscopeJerk_Mean_X*

*TimeDomainBodyGyroscopeJerk_Mean_Y*

*TimeDomainBodyGyroscopeJerk_Mean_Z*

*TimeDomainBodyGyroscopeJerk_StandardDeviation_X*

*TimeDomainBodyGyroscopeJerk_StandardDeviation_Y*

*TimeDomainBodyGyroscopeJerk_StandardDeviation_Z*

*TimeDomainBodyAccelerometerMagnitude_Mean*

*TimeDomainBodyAccelerometerMagnitude_StandardDeviation*

*TimeDomainGravityAccelerometerMagnitude_Mean*

*TimeDomainGravityAccelerometerMagnitude_StandardDeviation*

*TimeDomainBodyAccelerometerJerkMagnitude_Mean*

*TimeDomainBodyAccelerometerJerkMagnitude_StandardDeviation*

*TimeDomainBodyGyroscopeMagnitude_Mean*

*TimeDomainBodyGyroscopeMagnitude_StandardDeviation*

*TimeDomainBodyGyroscopeJerkMagnitude_Mean*

*TimeDomainBodyGyroscopeJerkMagnitude_StandardDeviation*

*FreqDomainBodyAccelerometer_Mean_X*

*FreqDomainBodyAccelerometer_Mean_Y*

*FreqDomainBodyAccelerometer_Mean_Z*

*FreqDomainBodyAccelerometer_StandardDeviation_X*

*FreqDomainBodyAccelerometer_StandardDeviation_Y*

*FreqDomainBodyAccelerometer_StandardDeviation_Z*

*FreqDomainBodyAccelerometerJerk_Mean_X*

*FreqDomainBodyAccelerometerJerk_Mean_Y*

*FreqDomainBodyAccelerometerJerk_Mean_Z*

*FreqDomainBodyAccelerometerJerk_StandardDeviation_X*

*FreqDomainBodyAccelerometerJerk_StandardDeviation_Y*

*FreqDomainBodyAccelerometerJerk_StandardDeviation_Z*

*FreqDomainBodyGyroscope_Mean_X*

*FreqDomainBodyGyroscope_Mean_Y*

*FreqDomainBodyGyroscope_Mean_Z*

*FreqDomainBodyGyroscope_StandardDeviation_X*

*FreqDomainBodyGyroscope_StandardDeviation_Y*

*FreqDomainBodyGyroscope_StandardDeviation_Z*

*FreqDomainBodyAccelerometerMagnitude_Mean*

*FreqDomainBodyAccelerometerMagnitude_StandardDeviation*

*FreqDomainBodyBodyAccelerometerJerkMagnitude_Mean*

*FreqDomainBodyBodyAccelerometerJerkMagnitude_StandardDeviation*

*FreqDomainBodyBodyGyroscopeMagnitude_Mean*

*FreqDomainBodyBodyGyroscopeMagnitude_StandardDeviation*

*FreqDomainBodyBodyGyroscopeJerkMagnitude_Mean*

*FreqDomainBodyBodyGyroscopeJerkMagnitude_StandardDeviation*


####Transformations performed to clean up the data

Test and training data were collapsed into a single dataset, variables not representing means or standard deviations were excluded, descriptive activity and variables names were applied, and the mean of each variable previously described for each {subject, activity} combination was computed. Specific details on how each of these steps were performed the function of this script can be found in README.md on this repo and in the run_analysis.R script itself. No other transformations were applied.