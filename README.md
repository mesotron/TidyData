Getting and Cleaning Data Course Project
========

run_analysis.R contains a function run() that runs the entire analysis, and saves the resulting tidy data set to tidyHumanActivityDataset.txt. tidyHumanActivityDataset.txt is a space-delimited table that can be read into R with the command
read.table("tidyHumanActivityDataset.txt", header=T)

As we were not asked to make our script download and unzip the file, the run_analysis.R script assumes that the data has already been manually downloaded and unzipped, and that the working directory is set to UCI HAR Dataset.


####Details

run() runs five functions, each of which completes one of the five steps described in the course project:

1. mergeTestAndTraining loads the training and the test sets and merges them to create one data set.

2. extractMeansAndStdevs extracts only those features representing means and standard deviations for each measurement. The code obtains these by looking only for variables containing the strings "-mean()" or "-std()". There were some other features involving means (such as meanfreq), but these were purposefully excluded since the assignment asked for the mean and standard deviation of each measurement. (meanfreq is not the mean of a measurement, but is rather the weighted average of the frequency components of a measurement, according to features_info.txt).

3. applyDescriptiveActivityNames executes step 3 of the assignment: It uses descriptive activity names to name the activities in the data set. It does this by making the activity column a factor and labeling the values with the appropriate activity names.

4. applyDescriptiveColumnNames executes step 4 of the assignment: Appropriately labels the data set with descriptive variable names. It basically loads the original names of the features from features.txt, but eliminates weird characters and tweaks the names to make them easier to interpret. For example "Acc" gets changed to "Accelerometer", "Mag" gets changed to "Magnitude", etc. For more about the meanings of the variables see the features_info.txt file that came with the data.

5. createTidyData executes step 5 of the assignment: It creates a second, independent tidy data set with the average of each variable for each activity and each subject. The resulting dataset meets the "tidy data" principles: there is only one variable for each column; every observation of that variable is in a different row (in this case, 'observations' are subjects performing particular activities); and variables with radically different structures should be stored in separate files/tables (does not apply in this case).