# Getting and Cleaning Data Course Project Code Book

This code book describes the variables in the columns of the "TidyData.txt" and "MeanData.txt" files. Information about how the data was gathered is as follows:
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

**"time" indicates time domain signals, while frequency indicates frequency domain signals gathered from the accelerometers.**
**"Jerk" is the body linear acceleration and angular velocity signals derived by time**

- Subject: The person performing the tasks that provided the measurements. This number ranges from 1 to 30.
- Activity: The activity the person being tested performed numbered 1 through 6.
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING
- "timeBodyAccelerometerMagnitudeMean" : The mean of the time domain signals of the body accelerometer.
- "timeBodyAccelerometerMagnitudeStandardDeviation" : The standard deviation of the time domain signals of the body accelerometer.

- "timeGravityAccelerometerMagnitudeMean" : The mean of the time domain signals of the gravity accelerometer.                      
- "timeGravityAccelerometerMagnitudeStandardDeviation" : The standard deviation of the time domain signals of the gravity accelerometer.          

- "timeBodyAccelerometerJerkMagnitudeMean" : The mean of the jerk of the time domain signals of the body accelerometer.                     
- "timeBodyAccelerometerJerkMagnitudeStandardDeviation" : The standard deviation of the jerk of the time domain signals of the body accelerometer.        

- "timeBodyGyroscopeMagnitudeMean" : The mean of the time domain signals of the gyroscope accelerometer.                             
- "timeBodyGyroscopeMagnitudeStandardDeviation" : The standard deviation of the time domain signals of the gyroscope accelerometer.                

- "timeBodyGyroscopeJerkMagnitudeMean" : The mean of the jerk of the time domain signals of the gyroscope accelerometer.                        
- "timeBodyGyroscopeJerkMagnitudeStandardDeviation" : The standard deviation of the jerk of the time domain signals of the gyroscope accelerometer.           

- "frequencyBodyAccelerometerMagnitudeMean" : The mean of the frequency domain signals of the body accelerometer.                   
- "frequencyBodyAccelerometerMagnitudeStandardDeviation" : The standard deviation of the frequency domain signals of the body accelerometer.      

- "frequencyBodyBodyAccelerometerJerkMagnitudeMean" : The mean of the jerk of the frequency domain signals of the body accelerometer.           
- "frequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation" : The standard deviation of the jerk of the frequency domain signals of the body accelerometer.

- "frequencyBodyBodyGyroscopeMagnitudeMean" : The mean of the frequency domain signals of the gyroscope accelerometer.                   
- "frequencyBodyBodyGyroscopeMagnitudeStandardDeviation" : The standard deviation of the frequency domain signals of the gyroscope accelerometer.      

- "frequencyBodyBodyGyroscopeJerkMagnitudeMean" : The mean of the jerk of the frequency domain signals of the gyroscope accelerometer.               
- "frequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation" : The standard deviation of the jerk of the frequency domain signals of the gyroscope accelerometer.
