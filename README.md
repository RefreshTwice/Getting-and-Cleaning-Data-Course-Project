# Getting-and-Cleaning-Data-Course-Project

The data used in this project comes from the UCI Human Activity Recognition dataset. A download link for the dataset can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Information about how the information in this dataset was gathered is as follows:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## How the Data was Cleaned

The run_analysis.R file creates a function run_analysis() that must be ran in order to create two separate data files. The first file is a cleaned version of the original data set containing only the standard deviation and mean measurements. The process for cleaning the data using run_analysis() is as follows:

1. Check to see if the UCI HAR Dataset.zip file has been downloaded and download it if it has not. Then, check to see if the file is unzipped already and unzip it if not.
2. Change the working directory to inside the UCI HAR Dataset file created from the zip file.
3. Read the following files into R:
-X and Y test and train files 
-Test and train subject
-Features and activity labels
4. Column bind the Y files to the corresponding X files, then change the column names to "Activity" for the first column and pair the following columns with the labels described in the features file.
5. Remove all columns that do not correspond to the describing the activity, mean, or standard deviation.
6. Add a column to the test and train data frames to describe the subject number.
7. Sort the data frames by subject number, then by activity, both ascending.
8. Convert the activity columns to a factor, then row bind test above train dataframe and store into a new variable.
9. Expand the names of the columns to be more descriptive of the measurements
10. Write out this data frame as the first clean data frame
11. Group the rows of the data frame by the subject and activity, then find the mean of each column and store into a new variable
12. Write out this new data frame as the second data frame with the mean of each measurement.
