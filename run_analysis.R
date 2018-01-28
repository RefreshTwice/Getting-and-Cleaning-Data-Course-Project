run_analysis <- function() {
  # Load required R packages
  library(dplyr)
  
  # Store each test and train text files into separate data frames
  testx <- read.table(paste(getwd(),"test", "X_test.txt", sep = "/"))
  testy <- read.table(paste(getwd(),"test", "Y_test.txt", sep = "/"))
  trainx <- read.table(paste(getwd(),"train", "X_train.txt", sep = "/"))
  trainy <- read.table(paste(getwd(),"train", "Y_train.txt", sep = "/"))
  
  # Read "subject_test.txt" and "subject_train.txt" into R
  subjectTest <- read.table(paste(getwd(),"test", "subject_test.txt", sep = "/"))
  subjectTrain <- read.table(paste(getwd(),"train", "subject_train.txt", sep = "/"))
  
  # Record the column names of the x sets in "features.txt"
  features <- read.table("features.txt")
  
  # Record the names of activities in "activity_labels.txt"
  activity <- read.table("activity_labels.txt")
  
  # Merge each y and x into one data frame for the test and train files
  test <- cbind(testy,testx)
  train <- cbind(trainy,trainx)
  
  # Name the columns of the test and train data frames
  colnames(test) <- c("Activity", as.character(features$V2))
  colnames(train) <- c("Activity", as.character(features$V2))
  
  # Extract only the mean and standard deviation of measurements
  test <- test[ ,grep("Activity|mean..$|std..$", colnames(test))]
  train <- train[ ,grep("Activity|mean..$|std..$", colnames(train))]
  
  # Add a column to test and train for each subject
  test <- cbind(Subject = as.factor(unlist(subjectTest)),test)
  train <- cbind(Subject = as.factor(unlist(subjectTrain)),train)
  
  # Sort the rows of test and train by activity
  test <- test[order(test$Subject, test$Activity),]
  train <- train[order(train$Subject, train$Activity),]
  
  # Convert the Activity columns in test and train to a factor column
  # and label each according to the second column of activity
  test[,2] <- as.factor(test[,2])
  levels(test[,2]) <- activity$V2
  train[,2] <- as.factor(train[,2])
  levels(train[,2]) <- activity$V2
  
  # Add a column in the beginning of test and train to distinguish
  # the two data tables
  test <- cbind(dataSource = as.factor("TEST"), test)
  train <- cbind(dataSource = as.factor("TRAIN"), train)
  
  # Merge test and train into a single data frame
  merged <- rbind(test, train)
  
  # Rename columns to be more descriptive
  names <- colnames(merged)
  names <- gsub("tB", "timeB", names)
  names <- gsub("tG", "timeG", names)
  names <- gsub("fB", "frequencyB", names)
  names <- gsub("Gyro", "Gyroscope", names)
  names <- gsub("Acc", "Accelerometer", names)
  names <- gsub("Mag", "Magnitude", names)
  names <- gsub("-std()", "StandardDeviation", names)
  names <- gsub("-mean()", "Mean", names)
  names <- gsub("\\()", "", names)
  colnames(merged) <- names
  
  # Output a file with the complete tidy data set
  write(merged, "TidyData.txt")
  
  # Take the average of each variable in a new data frame
  cleanMergedNames <- names(merged)
  cleanMergedMeans <- colMeans((cleanMerged))
  
}