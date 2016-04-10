# Code Book

This code book summarizes the resulting data in tidy_avg.txt.

## Identifiers

* subject - An identifier of the subject who carried out the experiment.
* activity - The type of activity performed when the corresponding measurements were taken wearing a smartphone (Samsung Galaxy S II) on the waist. 


## Measurements of Different Variables

Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk[XYZ] and timeBodyGyroscopeJerk[XYZ]). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, tBodyGyroscopeMagnitude, tBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fdomBodyAccelerometer[XYZ], fdomBodyAccelerometerJerk[XYZ], fdomBodyGyroscope[XYZ], fdomBodyAccelerometerJerkMagnitude, fdomBodyGyroscopeMagnitude, fdomBodyGyroscopeJerkMagnitude. (Note the 'fdom' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
X, Y, or Z is used to denote 3-axial signals in the X, Y and Z directions.

### Feature vector with time variables:

* timeBodyAccelerometerMeanX
* timeBodyAccelerometerMeanY
* timeBodyAccelerometerMeanZ
* timeBodyAccelerometerStdDevX
* timeBodyAccelerometerStdDevY
* timeBodyAccelerometerStdDevZ
* timeGravityAccelerometerMeanX
* timeGravityAccelerometerMeanY
* timeGravityAccelerometerMeanZ
* timeGravityAccelerometerStdDevX
* timeGravityAccelerometerStdDevY
* timeGravityAccelerometerStdDevZ
* timeBodyAccelerometerJerkMeanX
* timeBodyAccelerometerJerkMeanY
* timeBodyAccelerometerJerkMeanZ
* timeBodyAccelerometerJerkStdDevX
* timeBodyAccelerometerJerkStdDevY
* timeBodyAccelerometerJerkStdDevZ
* timeBodyGyroscopeMeanX
* timeBodyGyroscopeMeanY
* timeBodyGyroscopeMeanZ
* timeBodyGyroscopeStdDevX
* timeBodyGyroscopeStdDevY
* timeBodyGyroscopeStdDevZ
* timeBodyGyroscopeJerkMeanX
* timeBodyGyroscopeJerkMeanY
* timeBodyGyroscopeJerkMeanZ
* timeBodyGyroscopeJerkStdDevX
* timeBodyGyroscopeJerkStdDevY
* timeBodyGyroscopeJerkStdDevZ
* timeBodyAccelerometerMagnitudeMean
* timeBodyAccelerometerMagnitudeStdDev
* timeGravityAccelerometerMagnitudeMean
* timeGravityAccelerometerMagnitudeStdDev
* timeBodyAccelerometerJerkMagnitudeMean
* timeBodyAccelerometerJerkMagnitudeStdDev
* timeBodyGyroscopeMagnitudeMean
* timeBodyGyroscopeMagnitudeStdDev
* timeBodyGyroscopeJerkMagnitudeMean
* timeBodyGyroscopeJerkMagnitudeStdDev

### Feature vector with frequency domain variables:

* fdomBodyAccelerometerMeanX
* fdomBodyAccelerometerMeanY
* fdomBodyAccelerometerMeanZ
* fdomBodyAccelerometerStdDevX
* fdomBodyAccelerometerStdDevY
* fdomBodyAccelerometerStdDevZ
* fdomBodyAccelerometerMeanFreqX
* fdomBodyAccelerometerMeanFreqY
* fdomBodyAccelerometerMeanFreqZ
* fdomBodyAccelerometerJerkMeanX
* fdomBodyAccelerometerJerkMeanY
* fdomBodyAccelerometerJerkMeanZ
* fdomBodyAccelerometerJerkStdDevX
* fdomBodyAccelerometerJerkStdDevY
* fdomBodyAccelerometerJerkStdDevZ
* fdomBodyAccelerometerJerkMeanFreqX
* fdomBodyAccelerometerJerkMeanFreqY
* fdomBodyAccelerometerJerkMeanFreqZ
* fdomBodyGyroscopeMeanX
* fdomBodyGyroscopeMeanY
* fdomBodyGyroscopeMeanZ
* fdomBodyGyroscopeStdDevX
* fdomBodyGyroscopeStdDevY
* fdomBodyGyroscopeStdDevZ
* fdomBodyGyroscopeMeanFreqX
* fdomBodyGyroscopeMeanFreqY
* fdomBodyGyroscopeMeanFreqZ
* fdomBodyAccelerometerMagnitudeMean
* fdomBodyAccelerometerMagnitudeStdDev
* fdomBodyAccelerometerMagnitudeMeanFreq
* fdomBodyBodyAccelerometerJerkMagnitudeMean
* fdomBodyBodyAccelerometerJerkMagnitudeStdDev
* fdomBodyBodyAccelerometerJerkMagnitudeMeanFreq
* fdomBodyBodyGyroscopeMagnitudeMean
* fdomBodyBodyGyroscopeMagnitudeStdDev
* fdomBodyBodyGyroscopeMagnitudeMeanFreq
* fdomBodyBodyGyroscopeJerkMagnitudeMean
* fdomBodyBodyGyroscopeJerkMagnitudeStdDev
* fdomBodyBodyGyroscopeJerkMagnitudeMeanFreq


## Activity Labels

* WALKING (value 1) - subject was walking during the test
* WALKING_UPSTAIRS (value 2) - subject was walking upstairs during the test
* WALKING_DOWNSTAIRS (value 3) - subject was walking downstairs during the test
* SITTING (value 4) - subject was sitting during the test
* STANDING (value 5) - subject was standing during the test
* LAYING (value 6) - subject was laying down during the test
