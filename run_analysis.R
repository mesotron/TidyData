# Runs the analysis and saves the result to a file.
#
run <- function()
{
    d1 <- mergeTestAndTraining()
    d2 <- extractMeansAndStdevs(d1)
    d3 <- applyDescriptiveActivityNames(d2)
    d4 <- applyDescriptiveColumnNames(d3)
    d5 <- createTidyData(d4)
    write.table(d5, "tidyHumanActivityDataset.txt")
}

# Helper function for step 1 of assignment.
# Loads training data or test data (depending on value of dirName).
#
loadData <- function(dirName)
{
    x <- read.table(paste0(dirName, "/X_", dirName, ".txt"), strip.white = T)
    y <- read.table(paste0(dirName, "/y_", dirName, ".txt"))
    subjects <- read.table(paste0(dirName, "/subject_", dirName, ".txt"))
    cbind(subjects, y, x)
}

# Executes step 1 of the assignment:
# Merges the training and the test sets to create one data set.
#
mergeTestAndTraining <- function()
{
    test <- loadData("test")
    train <- loadData("train")
    as.data.frame(rbind(test, train))
}

# Helper function for steps 2 & 4 of the assignment.
getFeaturesToExtract <- function()
{
    features <- read.table("features.txt", stringsAsFactors=F)
    toExtract <- features[which(grepl("-mean()", features$V2, fixed=T) | grepl("-std()", features$V2, fixed=T)),]
    colnames(toExtract) <- c("id", "name")
    toExtract
}

# Executes step 2 of the assignment:
# Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
#
extractMeansAndStdevs <- function(data)
{
    toExtract <- getFeaturesToExtract()
    d <- data[,c(1, 2, toExtract$id + 2)]
    colnames(d) <- c("subject", "activity")     # We'll name the other columns in step 4
    d
}

# Executes step 3 of the assignment:
# Uses descriptive activity names to name the activities in the data set.
# We do this by making the activity column a factor and labeling the values
# with the appropriate activity names.
#
applyDescriptiveActivityNames <- function(data)
{
    activityLabels <- read.table("activity_labels.txt")
    data$activity <- factor(data$activity)
    levels(data$activity) <- activityLabels$V2
    data
}

# Executes step 4 of the assignment:
# Appropriately labels the data set with descriptive variable names. 
# We'll basically use the original names of the features, but we'll
# tweak the names with gsub to make them easier to interpret.
#
applyDescriptiveColumnNames <- function(data)
{
    features <- getFeaturesToExtract()
    features$name <- gsub("-std()", "_StandardDeviation", features$name, fixed=T)
    features$name <- gsub("-mean()", "_Mean", features$name, fixed=T)
    features$name <- gsub("^f", "FreqDomain", features$name)
    features$name <- gsub("^t", "TimeDomain", features$name)
    features$name <- gsub("Acc", "Accelerometer", features$name)
    features$name <- gsub("Gyro", "Gyroscope", features$name)
    features$name <- gsub("Mag", "Magnitude", features$name)
    features$name <- gsub("-", "_", features$name)
    
    colnames(data) <- c("subject", "activity", features$name)
    data
}

# Executes step 5 of the assignment:
# Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject. 
createTidyData <- function(data)
{
    vars <- colnames(data[3:length(data)])
    m <- melt(data, id=c("subject", "activity"), measure.vars=vars)
    data2 <- dcast(m, subject + activity ~ variable, mean)
    data2
}