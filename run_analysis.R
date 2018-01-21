run_analysis <- function() {
  # Load required R packages
  library(dplyr)
  
  # Store each test and train text files into separate data frames
  testx <- read.table(paste(getwd(),"test", "X_test.txt", sep = "/"))
  testy <- read.table(paste(getwd(),"test", "Y_test.txt", sep = "/"))
  trainx <- read.table(paste(getwd(),"train", "X_train.txt", sep = "/"))
  trainy <- read.table(paste(getwd(),"train", "Y_train.txt", sep = "/"))
  
  # Record the column names of the x sets in "features.txt"
  features <- read.table("features.txt")
  
  # Merge each y and x into one data frame for the test and train files
  test <- cbind(testy,testx)
  train <- cbind(trainy,trainx)
  
  # Name the columns of the test and train data frames
  colnames(test) <- c("Subject", as.character(features$V2))
  colnames(train) <- c("Subject", as.character(features$V2))
  
  # Extract only the mean and standard deviation of measurements
  test <- test[ ,grep("Subject|mean..$|std..$", colnames(test))]
  train <- train[ ,grep("Subject|mean..$|std..$", colnames(train))]
  
  # Merge test and train into a single data frame
  merged <- merge(test, train)
  
  
}